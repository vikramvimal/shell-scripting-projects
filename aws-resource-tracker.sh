#!/bin/bash
set -x

echo 'AWS_Instances'
aws ec2 describe-instances | jq -r '.Reservations[].Instances[].InstanceId'

echo 'IAM_users'
aws iam list-users | jq -r '.Users[].UserName'
