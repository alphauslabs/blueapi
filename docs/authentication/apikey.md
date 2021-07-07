---
sort: 1
---

# Using API keys

Authentication for Blue uses API keys. You can generate your API keys either from Ripple or Wave consoles. First, it will look for:
```bash
ALPHAUS_CLIENT_ID
ALPHAUS_CLIENT_SECRET
```

The following environment variable is optional.
```bash
ALPHAUS_AUTH_URL
```

For Ripple users, this can be set to:
```bash
ALPHAUS_AUTH_URL=https://login.alphaus.cloud/ripple/access_token
```

For Wave(Pro) users, this can be set to:
```bash
ALPHAUS_AUTH_URL=https://login.alphaus.cloud/access_token
```

In most cases, the environment variables above should be sufficient. If those are not set, it will then look for:
```bash
ALPHAUS_RIPPLE_CLIENT_ID
ALPHAUS_RIPPLE_CLIENT_SECRET
```

If those are not set, it will finally look for:
```bash
ALPHAUS_WAVE_CLIENT_ID
ALPHAUS_WAVE_CLIENT_SECRET
```

If you're mainly a Ripple user, we recommend you to set the following:
```bash
ALPHAUS_CLIENT_ID={ripple-client-id}
ALPHAUS_CLIENT_SECRET={ripple-client-secret}
```

If you're mainly a Wave(Pro) user, we recommend you to set the following:
```bash
ALPHAUS_CLIENT_ID={wave-client-id}
ALPHAUS_CLIENT_SECRET={wave-client-secret}
ALPHAUS_AUTH_URL=https://login.alphaus.cloud/access_token
```

After this, you should now be able to authenticate whether you use [bluectl](https://github.com/alphauslabs/bluectl), or our [supported client libraries](https://alphauslabs.github.io/blueapi/sdks/).

```warning
Currently, setting both Ripple and Wave(Pro) client credentials is not supported. If both are set, authentication will default to Ripple.
```
