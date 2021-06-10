---
sort: 1
---

# Using API keys

Authentication for Blue uses API keys. You can generate your API keys either from Ripple or Wave consoles. By default, the following environment variables applies, unless indicated otherwise (i.e. by a specific tool, or SDK):

```bash
# First, it will look for:
ALPHAUS_CLIENT_ID
ALPHAUS_CLIENT_SECRET

# If those are not set, it will then look for:
ALPHAUS_RIPPLE_CLIENT_ID
ALPHAUS_RIPPLE_CLIENT_SECRET

# If those are not set, it will then look for:
ALPHAUS_WAVE_CLIENT_ID
ALPHAUS_WAVE_CLIENT_SECRET

# If you're mainly a Ripple user, we recommend you to set the following:
ALPHAUS_CLIENT_ID=myclientid
ALPHAUS_CLIENT_SECRET=myclientsecret
# (optional) ALPHAUS_AUTH_URL=https://login.alphaus.cloud/ripple/access_token

# If you're mainly a Wave/WavePro user, we recommend you to set the following:
ALPHAUS_CLIENT_ID=myclientid
ALPHAUS_CLIENT_SECRET=myclientsecret
ALPHAUS_AUTH_URL=https://login.alphaus.cloud/access_token
```

After this, you should now be able to authenticate whether you use [bluectl](https://github.com/alphauslabs/bluectl), or our [supported client libraries](https://alphauslabs.github.io/blueapi/sdks/).
