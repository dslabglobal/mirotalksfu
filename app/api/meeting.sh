#!/bin/bash

API_KEY="dslabalwayswinning"
MIROTALK_URL="http://localhost:3000/api/v1/meeting"

curl $MIROTALK_URL \
    --header "authorization: $API_KEY" \
    --header "Content-Type: application/json" \
    --request POST
