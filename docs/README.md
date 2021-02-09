# Overview

[Blue API](https://github.com/alphauslabs/blueapi) is [Alphaus](https://alphaus.cloud/en/)' unified platform API for [Ripple](https://alphaus.cloud/en/product/ripple/) and [Wave](https://alphaus.cloud/en/product/wave/). It uses [protocol buffers](https://developers.google.com/protocol-buffers/) for service and message definitions, and [gRPC](https://grpc.io/) for implementation and SDK generation. It also uses [grpc-gateway](https://grpc-ecosystem.github.io/grpc-gateway/) for proxying JSON/REST requests to gRPC, and generating [OpenAPI](https://www.openapis.org/) documentation. This way, you have the option to use our APIs using either gRPC or JSON/REST, or both.

At the moment, Blue API is still a work in progress. Most of the APIs currently supported in Ripple and Wave are still not available. In the meantime, you can still use our JSON/REST APIs [here](https://docs.mobingi.com/v/api-reference/). We plan to upgrade as many of our JSON/REST APIs as possible over to gRPC as it is significantly more efficient in terms of throughput and CPU usage compared to JSON/REST API. However, we don't intend to deprecate our JSON/REST APIs once the transition is completed. You should be able to use both.

We also plan to release client libraries for mainstream languages in the near future. In the meantime, we are making the service definitions [public](https://github.com/alphauslabs/blueapi) so you can generate your own client libraries for it in any gRPC-supported language. You can follow the instructions for your preferred language on [grpc.io](https://grpc.io/) to generate and use your client.

You can also use [bluectl](https://github.com/alphauslabs/bluectl), our official CLI tool if you prefer not to write code yourself.

# Getting started

First, setup your environment variables for authentication. See this [page](https://alphauslabs.github.io/blueapi/authentication/apikey.html) for more information.

We recommend you to install our CLI tool, [bluectl](https://github.com/alphauslabs/bluectl). You can use this to validate your authentication, among other features. Use one of the steps below to check your authentication:

* Using the CLI

Run the following command:

```bash
$ bluectl me
```

If successful, it will print some information about the authenticated user.

* Using [curl](https://curl.se/)

```bash
$ curl -H "Authentication: Bearer $(bluectl access-token)" https://api.alphaus.cloud/blueaws/v1/me
```

If successful, it will print some information about the authenticated user.

# Supported APIs

- [Core API for AWS](https://alphauslabs.github.io/blueapi/apis/blueaws.html) - Core API for AWS-specific features.
- [AWSCost API](https://alphauslabs.github.io/blueapi/apis/awscost.html) - API for streaming/querying aggregated trueunblended/unblended costs and fees.

# Supported SDKs

- [blue-sdk-go](https://alphauslabs.github.io/blueapi/sdks/go.html) - SDK for the [Go](https://golang.org/) programming language.
