package sip

import (
	"context"
	"github.com/100mslive/biz/rpc"
	"github.com/100mslive/go-sdk/hms"
	"github.com/100mslive/go-sdk/hms/rtc"
	"github.com/100mslive/go-sdk/log"
	"github.com/100mslive/go-sdk/testutils"
	"github.com/100mslive/go-sdk/utils"
	"github.com/livekit/protocol/logger"
	"github.com/livekit/sip/pkg/config"
	"github.com/livekit/sip/pkg/media"
	"github.com/livekit/sip/pkg/media/opus"
	"github.com/livekit/sip/pkg/media/rtp"
	"github.com/livekit/sip/pkg/mixer"
	"github.com/pion/mediadevices"
	"github.com/pion/webrtc/v3"
	"go.uber.org/zap/zapcore"
	"io"
	"sync/atomic"
	"time"
)

type HmsRoom struct {
	sdk      hms.SDK
	store    *hms.Store
	observer *hms.EventObserver
	mix      *mixer.Mixer
	out      media.SwitchWriter[media.PCM16Sample]
}

func (r *HmsRoom) Connect(conf *config.Config, roomName, identity, wsUrl, token string) error {
	ctx := context.Background()
	r.observer.OnJoin(ctx, func(store *hms.Store) {
		r.store = store
	})
	r.observer.OnError(ctx, func(err error) {
		logger.Errorw("SDK error", err)
	})
	r.observer.OnTrackUpdate(ctx, func(typ rtc.TrackUpdate, track *rtc.SubscribeTrack, peer rpc.Peer) {
		logger.Infow("onTrackUpdate", "type", typ, "track", track, "peer", peer)
		switch typ {
		case rtc.TrackAdded:
			if track.Kind() != webrtc.RTPCodecTypeAudio {
				// TODO: unsubscribe track
				return
			}
			mtrack := r.NewTrack()
			defer mtrack.Close()

			odec, err := opus.Decode(mtrack, sampleRate, channels)
			if err != nil {
				return
			}

			h := rtp.NewMediaStreamIn[opus.Sample](odec)
			for {
				buf := make([]byte, 1460)
				n, err := track.Read(buf)
				if err != nil {
					logger.Errorw("track.Read done", err)
					return
				}

				pkt := &rtp.Packet{}
				err = pkt.Unmarshal(buf[:n])
				if err != nil {
					logger.Errorw("invalid packet", err)
					return
				}
				err = h.HandleRTP(pkt)
				if err != nil {
					logger.Errorw("handleRTP error", err)
					return
				}
			}
		}
	})
	return r.sdk.Join(&hms.Settings{
		UserName:          identity,
		Url:               "https://anshul-videoconf-13392.qa-app.100ms.live/meeting/jdu-ivyr-jsw",
		PublishLocalTrack: false,
		PublishAudio:      false,
		PublishVideo:      false,
	})
}
func (r *HmsRoom) Output() media.Writer[media.PCM16Sample] {
	return r.out.Get()
}
func (r *HmsRoom) SetOutput(out media.Writer[media.PCM16Sample]) {
	if r == nil {
		return
	}
	r.out.Set(out)
}

type CustomTrack struct {
	*webrtc.TrackLocalStaticSample
	enabled atomic.Bool
}

func (c *CustomTrack) Close() error {
	c.TrackLocalStaticSample.Unbind(nil)
	return nil
}

func (c *CustomTrack) OnEnded(f func(error)) {}

func (c *CustomTrack) NewRTPReader(codecName string, ssrc uint32, mtu int) (mediadevices.RTPReadCloser, error) {
	//TODO implement me
	panic("implement me")
}

func (c *CustomTrack) NewEncodedReader(codecName string) (mediadevices.EncodedReadCloser, error) {
	//TODO implement me
	panic("implement me")
}

func (c *CustomTrack) NewEncodedIOReader(codecName string) (io.ReadCloser, error) {
	//TODO implement me
	panic("implement me")
}

func (c *CustomTrack) SetEnabled(enabled bool) {
	c.enabled.Store(enabled)
}

func (c *CustomTrack) Enabled() bool {
	return c.enabled.Load()
}

func (c *CustomTrack) TotalBytes() uint64 {
	return 0
}

func (r *HmsRoom) NewParticipant() (media.Writer[media.PCM16Sample], error) {
	streamId := utils.NewTrackID()
	track, err := webrtc.NewTrackLocalStaticSample(webrtc.RTPCodecCapability{MimeType: webrtc.MimeTypeOpus}, utils.NewTrackID(), streamId)
	if err != nil {
		return nil, err
	}

	t := &CustomTrack{TrackLocalStaticSample: track}
	l := log.New(log.WithLevel(zapcore.InfoLevel))
	pubTrack := rtc.NewPublishTrack(t, l)
	pubTrack.SetEnabled(true)

	go func() {
		<-time.After(2 * time.Second)

		logger.Infow("publishing track", "track", pubTrack)
		err = r.sdk.Transport().Publish([]*rtc.PublishTrack{pubTrack})
		//if err != nil {
		//	return nil, err
		//}
	}()

	ow := media.FromSampleWriter[opus.Sample](track, sampleDur)
	pw, err := opus.Encode(ow, sampleRate, channels)
	if err != nil {
		return nil, err
	}
	return pw, nil
}

func (r *HmsRoom) NewTrack() Track {
	inp := r.mix.AddInput()
	return &HmsTrack{room: r, inp: inp}
}
func (r *HmsRoom) Close() error {
	r.sdk.Leave()
	return nil
}

func NewHMSRoom() (*HmsRoom, error) {
	r := &HmsRoom{}

	o := hms.NewEventObserver()
	sdk, err := hms.New(o.App(), hms.WithLogger(testutils.NewLogger(zapcore.DebugLevel)))

	if err != nil {
		return nil, err
	}

	r.sdk = sdk
	r.observer = o
	r.mix = mixer.NewMixer(&r.out, sampleRate)
	return r, nil
}

func ConnectToHmsRoom(conf *config.Config, roomName string, identity string) (*HmsRoom, error) {
	r, err := NewHMSRoom()
	if err != nil {
		return nil, err
	}

	if err := r.Connect(conf, roomName, identity, "", ""); err != nil {
		return nil, err
	}
	return r, nil
}

type HmsTrack struct {
	room *HmsRoom
	inp  *mixer.Input
}

func (t *HmsTrack) Close() error {
	t.room.mix.RemoveInput(t.inp)
	return nil
}

func (t *HmsTrack) PlayAudio(ctx context.Context, frames []media.PCM16Sample) {
	_ = media.PlayAudio[media.PCM16Sample](ctx, t, sampleDur, frames)
}

func (t *HmsTrack) WriteSample(pcm media.PCM16Sample) error {
	return t.inp.WriteSample(pcm)
}
