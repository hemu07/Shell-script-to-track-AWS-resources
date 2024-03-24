#!/bin/bash
###############################################################

#Author: Hemali Jayswal
#Date: 24th March
#script to monitor & report the AWS resources
#Resources monitored:AWS s3, AWS EC2, AWS Lambda, AWS IAM users

###############################################################

set -xv # debug mode for runnning script

# List S3 buckets
echo " list s3 buckets: "
aws s3 ls

#List ec2 instances
echo "list ec2 instances: "
aws ec2 describe-instances

#List aws Lamda functions
echo "list lambda functions: "
aws lambda list-functions

#List IAM users
echo "list IAM users: "
aws iam list-users | jq '.Users[].UserId'


