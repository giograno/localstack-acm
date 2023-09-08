#!/bin/bash

# deploy route 53 hosted zone
hosted_id=$(awslocal route53 create-hosted-zone --name blabla.com --caller-reference 2022-01-03-1 | jq -r ".HostedZone.Id")
export TF_VAR_hosted_id=$hosted_id
echo $TF_VAR_hosted_id

rm -rf .terraform*
rm -rf terraform*

# init terraform
tflocal init
tflocal apply -auto-approve
