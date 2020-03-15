#!/bin/sh

echo "Verify aws configure list"
aws configure list

echo "Verify assume role [curl --max-time 5 169.254.170.2${AWS_CONTAINER_CREDENTIALS_RELATIVE_URI}]"
curl --max-time 5 169.254.170.2${AWS_CONTAINER_CREDENTIALS_RELATIVE_URI} | jq -r ".RoleArn"

