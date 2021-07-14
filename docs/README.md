# Overview

[Blue API](https://github.com/alphauslabs/blueapi) is [Alphaus](https://alphaus.cloud/en/)' unified platform API for all its services such as [Ripple](https://alphaus.cloud/en/product/ripple/) and [Wave](https://alphaus.cloud/en/product/wave/). It uses [protocol buffers](https://developers.google.com/protocol-buffers/) for service and message definitions, and [gRPC](https://grpc.io/) for implementation and server/client stub generation. It also uses [grpc-gateway](https://grpc-ecosystem.github.io/grpc-gateway/) for proxying JSON/REST requests to gRPC, and generating [OpenAPI](https://www.openapis.org/) documentation. This way, you have the option to use our APIs using either gRPC or JSON/REST, or both.

At the moment, Blue API is still a work in progress. Most of the APIs currently supported in Ripple and Wave are still not available. In the meantime, you can still use our JSON/REST APIs [here](https://docs.mobingi.com/v/api-reference/). We plan to upgrade as many of our JSON/REST APIs as possible over to gRPC as it is significantly more efficient in terms of throughput and CPU usage compared to JSON/REST API. However, we don't intend to deprecate our JSON/REST APIs once the transition is completed. You should be able to use both.

We are in the process of generating client libraries (SDKs) for [programming languages supported in gRPC](https://grpc.io/docs/languages/). If you have a particular programming language in the list you want supported, contact us through our contact channels and we will try to prioritize it. You can also check out our OpenAPI reference for Blue [here](https://alphauslabs.github.io/blueapidocs/).

# Getting started

First, setup your environment variables for authentication. See this [page](https://alphauslabs.github.io/blueapi/authentication/apikey.html) for more information. We recommend you to install our CLI tool, [bluectl](https://github.com/alphauslabs/bluectl). You can use it to validate your authentication, among other features. To validate your environment, run the following command:

```sh
$ bluectl whoami
```

If successful, it will output some information about the authenticated user.

# Pricing

This API is still in beta, so its usage will be free. Once released, we will also announce the pricing details.
