#!/bin/bash
#

#set -xv

echo "list iam users: "
aws iam list-users | jq '.Users[].UserId'

echo "list ec2 instances: "
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo "list s3 buckets: "
aws s3 ls

echo "list lambda functions: "
aws lambda list-functions | jq '.Functions'

