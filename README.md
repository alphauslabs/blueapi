_The design, structure, and CI are not finalized yet._

----

The folder `google/*` was cloned from [github.com/googleapis/api-common-protos](https://github.com/googleapis/api-common-protos).

To build locally, install [buf](https://docs.buf.build/), then run:
```bash
$ buf generate
```

To generate OpenAPI v2 definitions, run:
```bash
$ protoc -I . --openapiv2_out ./gen/openapiv2 --openapiv2_opt logtostderr=true svc/v1/file.proto
```

Updates to this repo will also update the following repos:
* [blue-sdk-go](https://github.com/alphauslabs/blue-sdk-go) - generated SDK for Go
