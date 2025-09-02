[![main](https://github.com/alphauslabs/blueapi/actions/workflows/main.yml/badge.svg)](https://github.com/alphauslabs/blueapi/actions/workflows/main.yml)

> [!NOTE]
> `google/*` - copied from [github.com/googleapis/api-common-protos](https://github.com/googleapis/api-common-protos)  
> `protoc-gen-openapiv2/*` - copied from [github.com/grpc-ecosystem/grpc-gateway/protoc-gen-openapiv2](https://github.com/grpc-ecosystem/grpc-gateway/tree/master/protoc-gen-openapiv2)

`blueapi` is the [protobuf](https://developers.google.com/protocol-buffers) definition of [Alphaus](https://alphaus.cloud/) [Blue API](https://alphauslabs.github.io/docs/blueapi/overview/).

You need to install the following tools to build locally:

* The [protoc](https://grpc.io/docs/protoc-installation/) compiler
* The following compiler plugins:

```bash
$ go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
$ go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
$ go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway@latest
$ go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2@latest
$ go install github.com/pseudomuto/protoc-gen-doc/cmd/protoc-gen-doc@latest
```

* The [buf](https://docs.buf.build/installation) tool

This repo depends on [protos](https://github.com/alphauslabs/protos) as a [submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules). To update locally, you need to:

```bash
# First time cloning the repo:
$ git submodule update --init --recursive

# Otherwise:
$ git submodule update --remote --merge
```

Then run:

```bash
$ ./build.sh
```

Generated SDKs from updates to this repository:

* [blue-sdk-go](https://github.com/alphauslabs/blue-sdk-go)
* [blue-sdk-python](https://github.com/alphauslabs/blue-sdk-python)

The generated OpenAPI documentation can be found [here](https://alphauslabs.github.io/blueapidocs/).
