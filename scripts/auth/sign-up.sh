#!/usr/bin/env bash

curl -i \
     -d '{
            "email":"'"${EMAIL}"'",
            "password":"'"${PASSWORD}"'",
            "password_confirmation":"'"${PASSWORD}"'"
         }' \
     -H "Content-Type: application/json" \
     -X POST \
     http://localhost:3000/auth/