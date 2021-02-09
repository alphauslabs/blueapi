---
sort: 1
---

# Using API keys

Authentication for Blue uses API keys. You can generate your API keys either from Ripple or Wave consoles. Then set the following environment variables:

```bash
$ export ALPHAUS_CLIENT_ID=your-client-id
$ export ALPHAUS_CLIENT_SECRET=your-client-secret
```

After this, you should now be able to authenticate whether you use [bluectl](https://github.com/alphauslabs/bluectl), or our [supported client libraries](https://alphauslabs.github.io/blueapi/sdks/), or call our JSON/REST APIs directly.
