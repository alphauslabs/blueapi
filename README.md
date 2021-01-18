Install [buf](https://docs.buf.build/).

Clone and copy [github.com/googleapis/api-common-protos](https://github.com/googleapis/api-common-protos).

Run:
```bash
$ buf generate
```

Generate OpenAPI v2 definitions:
```bash
$ protoc -I . \
    --openapiv2_out \
    ./gen/openapiv2 \
    --openapiv2_opt \
    logtostderr=true \
    your/service/v1/service.proto
```
