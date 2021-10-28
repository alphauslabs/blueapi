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

```http
POST {access-token-url} HTTP1.1
Content-Type: multipart/form-data

{body formdata}
```

| **Name** | **Value** |
|---|---|
| `grant_type` | Valid value(s): `password`, `client_credentials` |
| `client_id` | The client id you received from Alphaus or from API. |
| `client_secret` | The client secret you received from Alphaus or from API. |
| `username` | You account username. Required if `grant_type` is set to `password`. |
| `password` | You account password. Required if `grant_type` is set to `password`. |
| `scope` | Valid value(s): `openid` |

### Response

```json
{
  "id_token": "eyJ0eXAiOiJKV1Q...",
  "token_type": "Bearer",
  "expires_in": 86400,
  "access_token": "eyJ0eXAiOiJKV1Q...",
  "refresh_token": "def50200..."
}
```

### Example

Create an access token entry under Tools > API Access Tokens in Ripple, or Settings > API Access Tokens in Wave(Pro).

```sh
# Example for Ripple access token:
$ curl -X POST \
  -F client_id={client-id} \
  -F client_secret={client-secret} \
  -F grant_type=client_credentials \
  -F scope=openid \
  https://login.alphaus.cloud/ripple/access_token
```
