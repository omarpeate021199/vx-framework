#!/bin/bash
# ------------------------------------------------------------------
# [Kevin Rivera] user_signin
#          A daptin user sing in action using curl aplication
# ------------------------------------------------------------------
curl 'http://localhost:3400/action/user_account/signin' \
-H 'Content-Type: application/json;charset=UTF-8' \
-H 'Accept: application/json, text/plain, */*' \
--data-binary '{"attributes":{"email":"kevin@vertexstudio.co","password":"vertex123456"}}'