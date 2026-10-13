# Review guidelines

These are the rules to apply when reviewing changes to the Blue API protobuf definitions in this repository.

Blue follows [Google's API design guide](https://google.aip.dev/) (AIPs). The rules below are Blue's documented deviations and take precedence over the AIPs. Anything not covered here falls back to Google's guide.

## How to review

* Flag violations of the rules in this file, and of the AIPs where this file is silent.
* Blue has many historical inconsistencies. Do not ask authors to fix existing, unrelated endpoints in the same PR. Focus on what the PR adds or changes.
* If a PR follows an undocumented pattern that is used consistently across Blue, do not flag it as a violation. Instead, suggest documenting it in the internal Blue API guide.
* Do not flag the deviations listed below as issues.

## Resource-oriented design ([AIP-121](https://google.aip.dev/121))

* A resource may expose only `List` (or only `Get`) as its minimum method.
* Strict adherence to the AIP's "Cyclic References" section is not required.

## Resource names ([AIP-122](https://google.aip.dev/122))

* Blue identifies resources with `id`, not `name`. Both are accepted, but `id` is preferred for new fields. This deviation applies throughout this file: wherever an AIP says `name`, read it as `id` (or `name`).
* Resource names are not required to follow a URL schema, and full resource names or resource URIs are not required.
* IDs may contain capital letters (for example billing group IDs, MSP IDs).
* Base64 IDs are allowed, even when not fully DNS-compatible.
* Collection identifiers do not need to be American English or `camelCase`.
* AIP requirements on fields representing resource names, parents, or references to other resources are not enforced.

## HTTP and gRPC transcoding ([AIP-127](https://google.aip.dev/127))

* The `{foo=bar/*}` path variable syntax is not required. Resource URIs are not enforced, and `grpc-gateway` is not fully compliant with Google's transcoding rules anyway.
* Every new RPC should still have a `google.api.http` option.

## Methods ([AIP-130](https://google.aip.dev/130))

Standard, custom, and streaming methods are all allowed, on both collections and resources.

Standard method deviations:

* `Get`: the resource may be returned directly or wrapped in a `GetXxxResponse`.
* `List`: pagination, filtering, and ordering fields may be added later. When they are added, they must follow the AIPs ([AIP-158](https://google.aip.dev/158), [AIP-160](https://google.aip.dev/160), [AIP-132](https://google.aip.dev/132)).
* `Create`: the resource may be returned directly or wrapped in a `CreateXxxResponse`.
* `Update`: the resource may be returned directly or wrapped in an `UpdateXxxResponse`.
* `Delete`: soft delete and long-running delete may follow the AIPs, but this is not required.

## Custom and streaming methods ([AIP-136](https://google.aip.dev/136))

The AIP rules for custom methods also apply to Blue's streaming methods, with these exceptions:

* Streaming list RPCs must be named `ReadXxx`, not `ListXxx`, and use the `:read` custom verb in the REST path. Non-streaming list RPCs use `ListXxx`. For example:

  ```proto
  rpc ListBillingGroups(ListBillingGroupsRequest) returns (ListBillingGroupsResponse) { ... }

  rpc ReadBillingGroups(ReadBillingGroupsRequest) returns (stream BillingGroup) {
    option (google.api.http) = {
      post: "/v1/billinggroups:read"
      body: "*"
    };
  }
  ```

  Flag new streaming RPCs named `List*`. Some existing RPCs predate this rule (for example `billing.v1.ListInvoice`); do not ask to rename them in unrelated PRs.
* For stateless methods, avoiding a "faux collection key" is not required.

## Long-running operations ([AIP-151](https://google.aip.dev/151))

* New APIs should prefer Blue's own [`operations/v1/operations.proto`](operations/v1/operations.proto). It was Blue's original long-running implementation and is easier to reference.
* `google.longrunning.Operation` is also accepted.

## Repository checks

* The change must pass `buf lint` and `buf breaking` with the configuration in [`buf.yaml`](buf.yaml). Flag breaking changes to existing messages or RPCs (removed or renumbered fields, changed field types, renamed RPCs) unless the PR explains why they are safe.
* New fields, messages, and RPCs should have comments. These comments become the public OpenAPI docs and SDK docs, so they should describe behavior, constraints, and which product (Ripple, Wave) the field or RPC applies to when it is not both.
* New services or packages must be added to the relevant steps in [`build.sh`](build.sh) (Python SDK compilation, and Connect generation if needed).
* Do not edit files under `google/` or `protoc-gen-openapiv2/`. They are copied from upstream.
* Regenerated output (for example OpenAPI docs) should be consistent with the proto changes in the same PR.
