# Overview

[Blue API](https://github.com/alphauslabs/blueapi) is [Alphaus](https://alphaus.cloud/en/)' unified platform API for [Ripple](https://alphaus.cloud/en/product/ripple/) and [Wave](https://alphaus.cloud/en/product/wave/). It uses [protocol buffers](https://developers.google.com/protocol-buffers/) for service and message definitions, and [gRPC](https://grpc.io/) for implementation and SDK generation. It also uses [grpc-gateway](https://grpc-ecosystem.github.io/grpc-gateway/) for proxying RESTful requests to gRPC, and generating [OpenAPI](https://www.openapis.org/) documentation.

At the moment, Blue API is still a work in progress. Most of the endpoints currently supported in Ripple and Wave are still not available. However, you can still use our current RESTful API. You can check out [https://docs.mobingi.com/v/api-reference/](https://docs.mobingi.com/v/api-reference/) for more information.

### Getting started

Todo.

### Supported APIs

- [AWSCost](https://alphauslabs.github.io/blueapi/apis/awscost.html) - API for streaming/querying aggregated trueunblended/unblended costs and fees.

### Supported SDKs

- [blue-sdk-go](https://alphauslabs.github.io/blueapi/sdks/go.html) - SDK for the [Go](https://golang.org/) programming language
