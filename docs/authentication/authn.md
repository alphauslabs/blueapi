---
sort: 1
---

# API access tokens

Before you can access Alphaus API services, you need to get an access token first. You will then use this token in your succeeding calls to the API using the `Authorization: Bearer {token}` HTTP header. Alphaus API tokens are JSON Web Tokens (JWT).

Use the following endpoints to acquire product-specific access tokens. Tokens are not compatible between the two. Ripple access tokens can only be used for Ripple endpoints; Wave(Pro) access tokens are only valid on Wave(Pro) endpoints.

```sh
# Ripple
https://login.alphaus.cloud/ripple/access_token

# Wave(Pro)
https://login.alphaus.cloud/access_token
```

### Request

To obtain an access token, send a POST message to the access token endpoint using the format described below.

```https
POST {access-token-url} HTTP1.1
Content-Type: multipart/form-data

{body formdata}
```

| **Name** | **Value** |
|---|---|
| `grant_type` | Valid values: `password`, `client_credentials` |
| `client_id` | The client id you received from Alphaus or from API. |
| `client_secret` | The client secret you received from Alphaus or from API. |
| `username` | You account username. Required if `grant_type` is set to `password`. |
| `password` | You account password. Required if `grant_type` is set to `password`. |
| `scope` | Valid values: `openid` |
