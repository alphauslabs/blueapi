---
sort: 2
show_sorted: false
---

# KvStore API

```note
OpenAPI documentation: [https://alphauslabs.github.io/blueapidocs/#/KvStore](https://alphauslabs.github.io/blueapidocs/#/KvStore)
```

All Alphaus clients have a free, limited access to our KvStore, a highly-available, distributed key/value store that is easily accessible using `curl`, or [`bluectl`](https://github.com/alphauslabs/bluectl), or using any of the [gRPC-supported programming languages](https://grpc.io/docs/languages/). All data are encrypted in transit and at rest so you can use this as a general purpose key/value database even in your production workloads.

The free version is limited to a regional store closest to you where data is replicated across three zones, and a size limit of around ~100Mb. If you want to have access to an unlimited, enterprise-grade version, either regional, multi-region, or even a globally-distributed version (data is replicated across multiple regions across multiple continents), please contact our Sales/Support team.

## Limits

* Maximum key size - 7KB
* Maximum value size - 10MB
