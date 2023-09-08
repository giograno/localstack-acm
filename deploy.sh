#!/bin/bash

# deploy route 53 hosted zone
hosted-id=$(awslocal route53 create-hosted-zone --name blabla.com --caller-reference 2022-01-03-1 | jq "HostedZone.Id"

rm -rf .terraform*
rm -rf terraform*

# init terraform
tflocal init
tflocal apply -auto-approve
