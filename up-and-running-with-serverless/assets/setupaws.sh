#!/bin/bash
ENDPOINT="https://gvgx8c2xfj.execute-api.us-east-1.amazonaws.com/get-credentials"
RESULT=$( curl -s -d "" "$ENDPOINT" )
echo "AWS_ACCESS_KEY_ID=$( echo $RESULT | jq -r .key )" >> ~/.bashrc
echo "AWS_SECRET_ACCESS_KEY=$( echo $RESULT | jq -r .secret )" >> ~/.bashrc
