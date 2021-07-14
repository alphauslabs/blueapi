---
sort: 1
---

# Using API keys

Authentication for Blue uses API keys. You can generate your API keys either from Ripple or Wave consoles.

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

The authentication flow is as follows. First, it will look for the following environment variables:
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

```warning
Currently, setting both Ripple and Wave(Pro) client credentials is not supported. If both are set, authentication will default to Ripple.
```

## Using bluectl

Once you set the environment variables above, we recommend you to install our official command line tool, [`bluectl`](https://github.com/alphauslabs/bluectl), to handle token generation:

```bash
# Should work with Linux, MacOS, and Windows through WSL/2:
$ brew install alphauslabs/tap/bluectl

# Get access token for production:
$ bluectl access-token
eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJhd...

# You can use the command above to provide token to your other commands. For example:
$ curl -H "Authorization: Bearer $(bluectl access-token)" https://api.alphaus.cloud/m/blue/iam/v1/whoami | jq
{
  "id":"test",
  "parent":"MSP-xxxxxxx",
  "metadata":{}
}

# If you want to access our NEXT (BETA) environment, you can do:
$ curl -H "Authorization: Bearer $(bluectl access-token --client-id $MY_CLIENT_ID_NEXT \
  --client-secret $MY_CLIENT_SECRET_NEXT --beta)" https://apinext.alphaus.cloud/m/blue/iam/v1/whoami | jq
{
  "id":"test",
  "parent":"MSP-xxxxxxx",
  "metadata":{}
}
```
