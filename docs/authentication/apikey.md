---
sort: 1
---

# Using API keys

Authentication for Blue uses API keys. You can generate your API keys either from Ripple or Wave consoles. Then set the following environment variables:

```bash
# For Ripple:
$ export ALPHAUS_RIPPLE_CLIENT_ID=my-client-id
$ export ALPHAUS_RIPPLE_CLIENT_SECRET=my-client-secret

# For Wave:
$ export ALPHAUS_WAVE_CLIENT_ID=my-client-id
$ export ALPHAUS_WAVE_CLIENT_SECRET=my-client-secret
```

After this, you should now be able to authenticate whether you use [bluectl](https://github.com/alphauslabs/bluectl), or our [supported client libraries](https://alphauslabs.github.io/blueapi/sdks/), or call our JSON/REST APIs directly.
