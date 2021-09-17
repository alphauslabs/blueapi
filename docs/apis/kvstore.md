---
sort: 2
show_sorted: false
---

# KvStore API

```note
OpenAPI documentation: [https://alphauslabs.github.io/blueapidocs/#/KvStore](https://alphauslabs.github.io/blueapidocs/#/KvStore)
```

All Alphaus clients have free access to the free-tier version of our KvStore, a highly-available, distributed key/value store that is easily accessible using `curl`, or [`bluectl`](https://github.com/alphauslabs/bluectl), or using any of the [gRPC-supported programming languages](https://grpc.io/docs/languages/). All data are encrypted in transit and at rest so you can use this as a general purpose key/value database even in your production workloads.

The free version is limited to a regional store closest to you where data is replicated across three zones. If you want to have access to an unlimited, enterprise-grade version, either regional, multi-region, or even a globally-distributed version (data is replicated across multiple regions across multiple continents), please contact our Sales/Support team.

## Limits

* Total data size (free tier) - around ~100MB
* Maximum key size - 7KB
* Maximum value size - 10MB

## Examples

Let's use `bluectl` to demonstrate how to use KvStore. To write a single key/value:
```sh
$ bluectl kv write hello world
```

To read the key/value:
```sh
$ bluectl kv read hello --bare
world
```

You can also write file contents as value:
```sh
# Here's a file example:
$ cat /tmp/test.json
{
  "title":"JP text",
  "message":"日本へようこそ"
}

# Write the key/value from file:
$ bluectl kv write json --from-file=/tmp/test.json

# Let's try reading the message section using jq:
$ bluectl kv read json --bare | jq -r .message
日本へようこそ
```
