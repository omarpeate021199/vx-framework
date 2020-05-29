#!/bin/bash
# ------------------------------------------------------------------
# [Kevin Rivera] user_registration
#          A daptin user registration using curl aplication
# ------------------------------------------------------------------

curl 'http://localhost:3400/action/user_account/signup' \
-H 'Authorization: Bearer null' \
-H 'Content-Type: application/json;charset=UTF-8' \
-H 'Accept: application/json, text/plain, */*' \
--data-binary '{"attributes":{"name":"kevinrev26","email":"kevin@vertexstudio.co","password":"vertex123456","passwordConfirm":"vertex123456"}}'
