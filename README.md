[![main](https://github.com/alphauslabs/blueapi/actions/workflows/main.yml/badge.svg)](https://github.com/alphauslabs/blueapi/actions/workflows/main.yml)

`blueapi` is the [protobuf](https://developers.google.com/protocol-buffers) definition of [Alphaus](https://alphaus.cloud/) [Blue API](https://alphauslabs.github.io/blueapi/).

The folder `google/*` was cloned from [github.com/googleapis/api-common-protos](https://github.com/googleapis/api-common-protos). The folder `protoc-gen-openapiv2/*` was cloned from [github.com/grpc-ecosystem/grpc-gateway/protoc-gen-openapiv2](https://github.com/grpc-ecosystem/grpc-gateway/tree/master/protoc-gen-openapiv2).

You need to install the following tools to build locally:

* The [protoc](https://grpc.io/docs/protoc-installation/) compiler
* The following compiler plugins:
```bash
$ go get -u -v google.golang.org/protobuf/cmd/protoc-gen-go \
    google.golang.org/grpc/cmd/protoc-gen-go-grpc \
    github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway \
    github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2 \
    github.com/pseudomuto/protoc-gen-doc/cmd/protoc-gen-doc
```
* The [buf](https://docs.buf.build/installation) tool

Then run:
```bash
$ ./build.sh
```

Generated SDKs from updates to this repository:
* [blue-sdk-go](https://github.com/alphauslabs/blue-sdk-go)
* [blue-sdk-python](https://github.com/alphauslabs/blue-sdk-python)
    * When releasing updates, an associated release needs to be made from this repository as well to ensure that the Python SDK is created and updated in PyPI as well.

The generated OpenAPI documentation can be found [here](https://alphauslabs.github.io/blueapidocs/).
