# Blue API

[Blue API](https://github.com/alphauslabs/blueapi) is [Alphaus](https://alphaus.cloud/en/)' unified platform API for [Ripple](https://alphaus.cloud/en/product/ripple/) and [Wave](https://alphaus.cloud/en/product/wave/). It uses [protocol buffers](https://developers.google.com/protocol-buffers/) for its service and message definitions, and [gRPC](https://grpc.io/) for implementation and SDK generation. It also uses [grpc-gateway](https://grpc-ecosystem.github.io/grpc-gateway/) for proxying RESTful requests to gRPC, and generating OpenAPI documentation.

## Supported APIs

- AWSCost - API for streaming/querying aggregated trueunblended/unblended costs and fees.

## Supported SDKs

- [blue-sdk-go](https://github.com/alphauslabs/blue-sdk-go) - Go (golang) SDK
