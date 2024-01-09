module github.com/livekit/sip

go 1.21

require (
	github.com/100mslive/biz v0.0.0-20231106082211-fcd2eb1d74b6
	github.com/100mslive/go-sdk v0.0.0-20240109071956-904ce7b7c01c
	github.com/at-wat/ebml-go v0.17.0
	github.com/emiago/sipgo v0.13.1
	github.com/frostbyte73/core v0.0.9
	github.com/icholy/digest v0.1.22
	github.com/livekit/mageutil v0.0.0-20230125210925-54e8a70427c1
	github.com/livekit/mediatransportutil v0.0.0-20231017082622-43f077b4e60e
	github.com/livekit/protocol v1.9.4-0.20231204184853-a64882f692f9
	github.com/livekit/psrpc v0.5.2
	github.com/livekit/server-sdk-go v1.1.1
	github.com/pion/interceptor v0.1.25
	github.com/pion/mediadevices v0.6.0
	github.com/pion/rtp v1.8.3
	github.com/pion/sdp/v2 v2.4.0
	github.com/pion/webrtc/v3 v3.2.23
	github.com/prometheus/client_golang v1.17.0
	github.com/rs/zerolog v1.28.0
	github.com/sirupsen/logrus v1.9.0
	github.com/stretchr/testify v1.8.4
	github.com/urfave/cli/v2 v2.25.7
	go.uber.org/zap v1.26.0
	golang.org/x/exp v0.0.0-20231110203233-9a3e6036ecaa
	gopkg.in/hraban/opus.v2 v2.0.0-20230925203106-0188a62cb302
	gopkg.in/yaml.v3 v3.0.1
)

require (
	cloud.google.com/go v0.110.9 // indirect
	cloud.google.com/go/compute v1.23.2 // indirect
	cloud.google.com/go/compute/metadata v0.2.3 // indirect
	cloud.google.com/go/iam v1.1.4 // indirect
	cloud.google.com/go/storage v1.31.0 // indirect
	github.com/100mslive/auth v0.0.0-20230601111349-dfe8768028c0 // indirect
	github.com/100mslive/feature-flags v0.0.0-20231103041304-81f94ce8cc71 // indirect
	github.com/100mslive/go-blob v0.0.0-20230320064410-a3b7d043279c // indirect
	github.com/100mslive/go-database v0.0.0-20231031062021-14ddde9d06ef // indirect
	github.com/100mslive/go-rest v0.0.0-20221122065146-9261a2ef9c12 // indirect
	github.com/100mslive/healthcheck v0.0.0-20230423170540-8d26582a98e0 // indirect
	github.com/100mslive/hmsappmanager v0.0.0-20230618103625-978236434eb6 // indirect
	github.com/100mslive/islb v0.0.0-20231103125129-a44a2d6e6df5 // indirect
	github.com/100mslive/limits v0.0.0-20230111133151-467eb539762b // indirect
	github.com/100mslive/policy v0.0.0-20231103061528-3a3f04594cc2 // indirect
	github.com/100mslive/polls v0.0.0-20230621105416-3f75d601a3ee // indirect
	github.com/100mslive/reporter v0.10.18-0.20231018085904-66bc8477fd69 // indirect
	github.com/100mslive/rpcaccounts v0.0.0-20230322060103-ce85a005936c // indirect
	github.com/100mslive/secrets v0.0.0-20230319192559-1e0123a0d246 // indirect
	github.com/100mslive/sfu v0.0.0-20240108110459-ba73d2bf3778 // indirect
	github.com/100mslive/store/v2 v2.36.1-0.20231103123453-74ad830b82d2 // indirect
	github.com/Masterminds/semver/v3 v3.1.1 // indirect
	github.com/Shopify/sarama v1.36.0 // indirect
	github.com/Unleash/unleash-client-go/v3 v3.9.0 // indirect
	github.com/XiaoMi/pegasus-go-client v0.0.0-20210427083443-f3b6b08bc4c2 // indirect
	github.com/aliyun/aliyun-oss-go-sdk v2.2.5+incompatible // indirect
	github.com/allegro/bigcache/v3 v3.0.2 // indirect
	github.com/aws/aws-sdk-go v1.44.314 // indirect
	github.com/aws/aws-sdk-go-v2 v1.20.0 // indirect
	github.com/aws/aws-sdk-go-v2/aws/protocol/eventstream v1.4.11 // indirect
	github.com/aws/aws-sdk-go-v2/config v1.18.32 // indirect
	github.com/aws/aws-sdk-go-v2/credentials v1.13.31 // indirect
	github.com/aws/aws-sdk-go-v2/feature/ec2/imds v1.13.7 // indirect
	github.com/aws/aws-sdk-go-v2/feature/s3/manager v1.11.76 // indirect
	github.com/aws/aws-sdk-go-v2/internal/configsources v1.1.37 // indirect
	github.com/aws/aws-sdk-go-v2/internal/endpoints/v2 v2.4.31 // indirect
	github.com/aws/aws-sdk-go-v2/internal/ini v1.3.38 // indirect
	github.com/aws/aws-sdk-go-v2/internal/v4a v1.1.0 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/accept-encoding v1.9.12 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/checksum v1.1.32 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/presigned-url v1.9.31 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/s3shared v1.15.0 // indirect
	github.com/aws/aws-sdk-go-v2/service/s3 v1.38.1 // indirect
	github.com/aws/aws-sdk-go-v2/service/sso v1.13.1 // indirect
	github.com/aws/aws-sdk-go-v2/service/ssooidc v1.15.1 // indirect
	github.com/aws/aws-sdk-go-v2/service/sts v1.21.1 // indirect
	github.com/aws/smithy-go v1.14.0 // indirect
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/bep/debounce v1.2.1 // indirect
	github.com/blackjack/webcam v0.5.0 // indirect
	github.com/bradfitz/gomemcache v0.0.0-20220106215444-fb4bf637b56d // indirect
	github.com/cenkalti/backoff/v4 v4.2.0 // indirect
	github.com/cespare/xxhash/v2 v2.2.0 // indirect
	github.com/cpuguy83/go-md2man/v2 v2.0.2 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/dgryski/go-rendezvous v0.0.0-20200823014737-9f7001d12a5f // indirect
	github.com/dustin/go-humanize v1.0.1 // indirect
	github.com/eapache/channels v1.1.0 // indirect
	github.com/eapache/go-resiliency v1.3.0 // indirect
	github.com/eapache/go-xerial-snappy v0.0.0-20180814174437-776d5712da21 // indirect
	github.com/eapache/queue v1.1.0 // indirect
	github.com/eko/gocache/v2 v2.3.1 // indirect
	github.com/elliotchance/orderedmap/v2 v2.2.0 // indirect
	github.com/emvi/iso-639-1 v1.1.0 // indirect
	github.com/fogleman/gg v1.3.0 // indirect
	github.com/fsnotify/fsnotify v1.6.0 // indirect
	github.com/gammazero/deque v0.2.1 // indirect
	github.com/gammazero/workerpool v1.1.3 // indirect
	github.com/go-jose/go-jose/v3 v3.0.1 // indirect
	github.com/go-logr/logr v1.3.0 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/go-redis/redis/v8 v8.11.5 // indirect
	github.com/gobwas/httphead v0.1.0 // indirect
	github.com/gobwas/pool v0.2.1 // indirect
	github.com/gobwas/ws v1.2.1 // indirect
	github.com/golang/freetype v0.0.0-20170609003504-e2365dfdc4a0 // indirect
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/golang/mock v1.6.0 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/golang/snappy v0.0.4 // indirect
	github.com/google/go-cmp v0.5.9 // indirect
	github.com/google/s2a-go v0.1.4 // indirect
	github.com/google/uuid v1.4.0 // indirect
	github.com/google/wire v0.5.0 // indirect
	github.com/googleapis/enterprise-certificate-proxy v0.2.5 // indirect
	github.com/googleapis/gax-go/v2 v2.12.0 // indirect
	github.com/gorilla/mux v1.8.0 // indirect
	github.com/gorilla/websocket v1.5.0 // indirect
	github.com/grpc-ecosystem/go-grpc-middleware v1.4.0 // indirect
	github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0 // indirect
	github.com/hashicorp/errwrap v1.1.0 // indirect
	github.com/hashicorp/go-multierror v1.1.1 // indirect
	github.com/hashicorp/go-uuid v1.0.3 // indirect
	github.com/jcmturner/aescts/v2 v2.0.0 // indirect
	github.com/jcmturner/dnsutils/v2 v2.0.0 // indirect
	github.com/jcmturner/gofork v1.7.6 // indirect
	github.com/jcmturner/gokrb5/v8 v8.4.3 // indirect
	github.com/jcmturner/rpc/v2 v2.0.3 // indirect
	github.com/jmespath/go-jmespath v0.4.0 // indirect
	github.com/joho/godotenv v1.4.0 // indirect
	github.com/jxskiss/base62 v1.1.0 // indirect
	github.com/klauspost/compress v1.17.2 // indirect
	github.com/klauspost/cpuid/v2 v2.2.5 // indirect
	github.com/lithammer/shortuuid/v4 v4.0.0 // indirect
	github.com/mackerelio/go-osstat v0.2.4 // indirect
	github.com/magefile/mage v1.15.0 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.18 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.4 // indirect
	github.com/montanaflynn/stats v0.0.0-20171201202039-1bf9dbcd8cbe // indirect
	github.com/nats-io/nats.go v1.31.0 // indirect
	github.com/nats-io/nkeys v0.4.6 // indirect
	github.com/nats-io/nuid v1.0.1 // indirect
	github.com/patrickmn/go-cache v2.1.0+incompatible // indirect
	github.com/pegasus-kv/thrift v0.13.0 // indirect
	github.com/petermattis/goid v0.0.0-20180202154549-b0b1615b78e5 // indirect
	github.com/pierrec/lz4/v4 v4.1.15 // indirect
	github.com/pion/datachannel v1.5.5 // indirect
	github.com/pion/dtls/v2 v2.2.7 // indirect
	github.com/pion/ice/v2 v2.3.11 // indirect
	github.com/pion/logging v0.2.2 // indirect
	github.com/pion/mdns v0.0.8 // indirect
	github.com/pion/randutil v0.1.0 // indirect
	github.com/pion/rtcp v1.2.12 // indirect
	github.com/pion/sctp v1.8.8 // indirect
	github.com/pion/sdp/v3 v3.0.6 // indirect
	github.com/pion/srtp/v2 v2.0.18 // indirect
	github.com/pion/stun v0.6.1 // indirect
	github.com/pion/transport/v2 v2.2.3 // indirect
	github.com/pion/turn/v2 v2.1.3 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/prometheus/client_model v0.4.1-0.20230718164431-9a2bf3000d16 // indirect
	github.com/prometheus/common v0.44.0 // indirect
	github.com/prometheus/procfs v0.11.1 // indirect
	github.com/rbaliyan/event v0.1.0 // indirect
	github.com/rbaliyan/go-version v0.0.0-20211025105209-8d6c690fe861 // indirect
	github.com/rcrowley/go-metrics v0.0.0-20201227073835-cf1acfcdf475 // indirect
	github.com/redis/go-redis/v9 v9.3.0 // indirect
	github.com/rs/cors v1.8.0 // indirect
	github.com/russross/blackfriday/v2 v2.1.0 // indirect
	github.com/sasha-s/go-deadlock v0.3.1 // indirect
	github.com/satori/go.uuid v1.2.1-0.20181028125025-b2ce2384e17b // indirect
	github.com/sercand/kuberesolver/v5 v5.1.1 // indirect
	github.com/sourcegraph/jsonrpc2 v0.1.0 // indirect
	github.com/spf13/cast v1.5.0 // indirect
	github.com/stretchr/objx v0.5.0 // indirect
	github.com/thoas/go-funk v0.9.3 // indirect
	github.com/twitchtv/twirp v8.1.3+incompatible // indirect
	github.com/twmb/murmur3 v1.1.5 // indirect
	github.com/xdg-go/pbkdf2 v1.0.0 // indirect
	github.com/xdg-go/scram v1.1.1 // indirect
	github.com/xdg-go/stringprep v1.0.3 // indirect
	github.com/xrash/smetrics v0.0.0-20201216005158-039620a65673 // indirect
	github.com/youmark/pkcs8 v0.0.0-20181117223130-1be2e3e5546d // indirect
	github.com/zeebo/xxh3 v1.0.2 // indirect
	go.mongodb.org/mongo-driver v1.11.4 // indirect
	go.opencensus.io v0.24.0 // indirect
	go.opentelemetry.io/contrib/instrumentation/go.mongodb.org/mongo-driver/mongo/otelmongo v0.26.1 // indirect
	go.opentelemetry.io/otel v1.14.0 // indirect
	go.opentelemetry.io/otel/trace v1.14.0 // indirect
	go.uber.org/atomic v1.11.0 // indirect
	go.uber.org/multierr v1.11.0 // indirect
	gocloud.dev v0.34.0 // indirect
	gocloud.dev/pubsub/kafkapubsub v0.25.0 // indirect
	golang.org/x/crypto v0.15.0 // indirect
	golang.org/x/image v0.13.0 // indirect
	golang.org/x/mod v0.14.0 // indirect
	golang.org/x/net v0.18.0 // indirect
	golang.org/x/oauth2 v0.11.0 // indirect
	golang.org/x/sync v0.5.0 // indirect
	golang.org/x/sys v0.14.0 // indirect
	golang.org/x/text v0.14.0 // indirect
	golang.org/x/time v0.3.0 // indirect
	golang.org/x/xerrors v0.0.0-20220907171357-04be3eba64a2 // indirect
	google.golang.org/api v0.134.0 // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/genproto v0.0.0-20231030173426-d783a09b4405 // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20231016165738-49dd2c1f3d0b // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20231106174013-bbf56f31fb17 // indirect
	google.golang.org/grpc v1.59.0 // indirect
	google.golang.org/protobuf v1.31.0 // indirect
	gopkg.in/natefinch/lumberjack.v2 v2.0.0 // indirect
	gopkg.in/tomb.v2 v2.0.0-20161208151619-d5d1b5820637 // indirect
	k8s.io/apimachinery v0.28.2 // indirect
)
