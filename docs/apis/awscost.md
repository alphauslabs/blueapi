---
sort: 2
---

# AWSCost API

AWSCost API allows you to stream your AWS-related usage costs and fees, including credits, and refunds. This is the same data that Ripple/Wave uses to create invoices, graphs, and reports, aggregated at daily level.

Before you can use this API, you need to register your AWS management (or billing, or payer) account to Ripple. We will be releasing an API for this registration process in the near future so stay tuned. In the meantime, you can contact us [here](https://alphaus.cloud/en/inquiry/).

Once registered, and the correct permissions are setup, our calculation engines will start downloading your [CUR](https://aws.amazon.com/aws-cost-management/aws-cost-and-usage-reporting/) files from your S3 bucket everytime your CUR files are updated by AWS. These checks are done periodically, several times a day. After downloading, calculations will be done based on your billing group settings, whether it will be AWS unblended or Alphaus trueunblended values.

Typically, you will download both usage-based costs and fee-based costs from this API to get the whole spending data. To demontrate, let's use the [bluectl](https://github.com/alphauslabs/bluectl) tool.

Make sure to setup authentication [here](https://alphauslabs.github.io/blueapi/authentication/apikey.html). Here are some example usage scenarios.

Download current month's usage costs and save as CSV file:

```bash
# Here, 'all' could mean MSP-level or billing group level.
$ bluectl ripple awscost --type all --out /tmp/out.csv
```

Download current month's fees and save as CSV file:

```bash
# Here, 'all' could mean MSP-level or billing group level.
$ bluectl ripple awsfees --type all --out /tmp/out.csv
```

You can also provide the `--start yyyy-mm-dd` and `--end yyyy-mm-dd` flags for date ranges.

Download current month's usage costs for a specific account and save as CSV file:

```bash
$ bluectl ripple awscost 1234567890 --type account --out /tmp/out.csv
```

Download current month's fees for a specific billing group and save as CSV file:

```bash
# Here, 'bill001' is your billing group id.
$ bluectl ripple awsfees bill001 --type billinggroup --out /tmp/out.csv
```

You can also provide the `--include-tags` and/or `--include-costcategories` flag(s) to include the tags and/or cost category information in the streaming data. At the moment, only the usage-based data supports tags and cost categories. Support for fees will be coming soon.

Although these APIs are designed to be streamed due to potentially large amounts of data, you can still use the JSON/REST API like so:

```bash
# Output is a newline-delimited rows of JSON data.
$ curl -X POST \
    -H "Authorization: Bearer $(bluectl ripple access-token)" \
    https://api.alphaus.cloud/awscost/v1/accounts/1234567890/costs:streamReadAccountCosts
```

We will be publishing the OpenAPI documentations for these JSON/REST APIs soon. In the meantime, check them out [here](https://github.com/alphauslabs/blueapi/tree/main/openapiv2). You can use something like [editor.swagger.io](https://editor.swagger.io/).

# Pricing

This API is still in beta, so its usage will be free. Once released, we will also announce the pricing details.
