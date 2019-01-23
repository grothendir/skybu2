#!/bin/bash

read -p "Saisir le nom de l'image source à télécharger: " imagedocker
#read -p "Saisir le nom de la destination(ID du projet) : " destination
#read -p "Saisir le nom de l'image destination : " imagedestination
#read -p "Saisir le nom du tag de l'image destination : " tagdestination

destination=$(gcloud info| grep Project: | cut -d: -f2 | tr -d "[] ")

sudo docker pull $imagedocker
sudo docker tag $imagedocker eu.gcr.io/$destination/$imagedocker:tag$imagedocker
sudo docker push eu.gcr.io/$destination/$imagedocker:tag$imagedocker

#clear

#sudo docker images





