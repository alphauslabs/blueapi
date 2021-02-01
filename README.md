**The design, structure, and CI are not finalized yet.**

The folder `google/*` was cloned from [github.com/googleapis/api-common-protos](https://github.com/googleapis/api-common-protos). The folder `protoc-gen-openapiv2/*` was cloned from [github.com/grpc-ecosystem/grpc-gateway/protoc-gen-openapiv2](https://github.com/grpc-ecosystem/grpc-gateway/tree/master/protoc-gen-openapiv2).

To build locally, install [buf](https://docs.buf.build/), then run:
```bash
$ buf generate
```

To generate OpenAPI v2 definitions, run the following command for your proto file:
```bash
$ protoc -I . --openapiv2_out ./openapiv2 --openapiv2_opt logtostderr=true svc/v1/file.proto
```

Updates to this repo will also update the following repos:
* [blue-sdk-go](https://github.com/alphauslabs/blue-sdk-go) - generated SDK for Go
