#!/bin/bash

# créer un security group
secGroupId=$(aws ec2 create-security-group --group-name security_group_skybu_test --description "security group skybu_test" --query "GroupId" --output text)
echo "security group id: $secGroupId"
# règles de trafic réseau 
aws ec2 authorize-security-group-ingress --group-name security_group_skybu_test --protocol tcp --port 22 --cidr 0.0.0.0/0
# création des paires de clef
aws ec2 create-key-pair --key-name skybu_test_key --query "KeyMaterial" --output text > skybu_test_key.pem
chmod 400 skybu_test_key.pem
