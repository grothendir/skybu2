# lancement d'une instance
instanceId=$(aws ec2 run-instances \
		 --image-id ami-032509850cf9ee54e \
		 --security-group-ids $secGroupId \
		 --count 1 \
		 --instance-type "$1" \
		 --key-name skybu_test_key \
		 --query "Instances[0].InstanceId" \
		 --output text)
echo "instance Id: $instanceId"
echo "type d'instance: $1"
# description de l'instance
instanceIP=$(aws ec2 describe-instances \
		 --instance-ids $instanceId \
		 --query "Reservations[0].Instances[0].PublicIpAddress" \
		 --output text)
echo "public address IP: $instanceIP"
# connexion ssh à l'instance
echo "pour se connecter à $instanceId lancer la commande suivante:"
echo "ssh -i skybu_test_key.pem ec2-user@$instanceIP"
