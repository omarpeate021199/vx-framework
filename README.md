# VX Framework
A framework to construct applications.

# Dependencies
development:
* daptin: `docker run -p 3400:3400`
* Matrix Client SDK


# Usage

At this point we are using simple bash scripts to perform api calls to daptin endpoints with curl.

## User registration

Change your credentials on `scripts/user_registration.sh` then execute:

```
./scripts/user_registration.sh
```
The output will be:

```
[
    {
        "ResponseType":"client.notify",
        "Attributes":{
            "message":"Created user_account",
            "title":"Success",
            "type":"success"
        }
    },
    {
        "ResponseType":"client.notify",
        "Attributes":{
            "message":"Created usergroup",
            "title":"Success",
            "type":"success"
        }
    },
    {
        "ResponseType":"client.notify",
        "Attributes":{
            "message":"Created user_account_user_account_id_has_usergroup_usergroup_id",
            "title":"Success",
            "type":"success"}
        },
    {
        "ResponseType":"client.notify",
        "Attributes":{
            "__type":"client.notify",
            "message":"Sign-up successful. Redirecting to sign in",
            "title":"Success",
            "type":"success"
        }
    },
    {
        "ResponseType":"client.redirect",
        "Attributes":{
            "__type":"client.redirect",
            "delay":2000,
            "location":"/auth/signin",
            "window":"self"
        }
    }
]
```
This creates a new user entity that can perform a sign in action:

`./scripts/user_signin.sh`

The output:

```
[
    {
        "ResponseType":"client.store.set",
        "Attributes":{
            "key":"token",
            "value":"eyJhbGciOiJIUzI.."
        }
    },
    {
        "ResponseType":"client.cookie.set",
        "Attributes":{
            "key":"token",
            "value":"eyJhbGciOiJIUzI.."
        }
    },
    {
        "ResponseType":"client.notify",
        "Attributes":{
            "message":"Logged in",
            "title":"Success",
            "type":"success"
        }
    },
    {
        "ResponseType":"client.redirect",
        "Attributes":{
            "delay":2000,
            "location":"/",
            "window":"self"
            }
    },
    {
        "ResponseType":"client.store.set",
        "Attributes":{
            "key":"token",
            "value":"eyJhbGciOiJIUzI.."
        }
    },
    {
        "ResponseType":"client.cookie.set",
        "Attributes":{
            "key":"token",
            "value":"eyJhbGciOiJIUzI.."
        }
    },
    {
        "ResponseType":"client.notify",
        "Attributes":{
            "message":"Logged in",
            "title":"Success",
            "type":"success"
        }
    },
    {
        "ResponseType":"client.redirect",
        "Attributes":{
            "delay":2000,
            "location":"/",
            "window":"self"
        }
    }
]
```
