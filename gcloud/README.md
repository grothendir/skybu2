
# Publier sur Gcloud

## Installer gcloud SDK sur la machine

Pour se connecter au compte du groupe : ssh devops@139.99.202.71

Installation gcloud sur le serveur du group skybu :

Tapez:
sudo curl https://sdk.cloud.google.com | bash
sudo il faut être root installer gcloud 



ou alors aller sur :

https://cloud.google.com/sdk/install

Choisir en fonction du système cible

https://cloud.google.com/sdk/docs/quickstart-redhat-centos

Dans les 2 cas suivre les instructions post install à partir de

Do you want to help improve the Google Cloud SDK (Y/n)?  n

Do you want to continue (Y/n)?  Y

==> Start a new shell for the changes to take effect.  
Il faut Redémarrer pour que l’installation prenne effet (exit et se connecter).

Commande pour verifier les infos :

``` 
$ gcloud info
```

Commander pour ajouter le code  devérification : 

```
$ gcloud init
```

You must log in to continue. Would you like to log in (Y/n)?  Y

Go to the following link in your browser:

    https://accounts.google.com/o/oauth2/auth?redirect_uri=urn%3Aietf%3Awg%3Aoauth%3A2.0%3Aoob&prompt=select_account&response_type=code&client_id=32555940559.apps.googleusercontent.com&scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.email+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcloud-platform+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fappengine.admin+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcompute+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Faccounts.reauth&access_type=offline


Enter verification code: 4/uQAqwfe3U7hWgJ2A7dDHDAN8Td7VSdYuEFhP7k0g3jgiQ4y1Bw0PoIQ
On doit copier ce lien et coller dans le navigateur pour recevoir le code de verification et il affiche les differentes informations :
You are logged in as: [aws2ajc@gmail.com].

Il affiche les différents participants du projet:

Pick cloud project to use: 
 - [1] benoit-225909
 - [2] kynamprojet
 - [3] projet-ulysse101
 - [4] skillful-fx-225817
 - [5] soumana
 - [6] yann-225909
 - [7] Create a new project
Please enter numeric choice or text value (must exactly match list 
item):  




## initialiser gcloud
S'identifier à l'aide de la clé json générée dans la console Menu `IAM et administration > comptes de service`  

    cat credential.json | docker login -u _json_key --password-stdin https://[HOSTNAME]
where [HOSTNAME] is gcr.io, us.gcr.io, eu.gcr.io, or asia.gcr.io.

(https://cloud.google.com/container-registry/docs/advanced-authentication?hl=fr#advanced_authentication_methods)

*variables*

    export GOOGLE_APPLICATION_CREDENTIALS="/chemin/vers/credential.json"
    export CLOUD_SDK_REPO="cloud-sdk-Core"

# Utiliser gcloud

Configurer le projet avec lequel travailler

    gcloud config set project VALUE

Commandes de base

    gcloud compute [ Disks | Info | Instances | Load balancing | Networking | Tools ]
    > gcloud compute instances list
    NAME        ZONE        MACHINE_TYPE  PREEMPTIBLE  INTERNAL_IP  EXTERNAL_IP     STATUS
    instance-1  us-east1-b  f1-micro  10.142.0.2   35.243.146.118  RUNNING
    instance-2  us-east1-b  f1-micro  10.142.0.3   35.243.203.20   RUNNING
    > gcloud compute instances delete --zone us-east1-b instance-2 --quiet

 et

    gcloud container [ clusters | images | node-pools | operation ] | [ get-server-config ]
    gcloud container images list --repository eu.gcr.io/benoit-225909

    Se placer dans le répertoire  :~/projet$ cd skybu/gcloud/ et tapez pour récupérer les différentes 	modifications 
	git pull origin master
	Pour coller la clé json 
    $ cp/home/soumana/Téléchargements/skillful-fx-225817-d223546ade68.json .

    
 Pour ajouter la clé

 $ json git add skillful-fx-225817-d223546ade68.json


 $git commit -m "ajout de la bonne clé json pour gcloud pour le compte(My First Project)"

 Pour envoyer ma nouvelle version au projet 
 
 $git push origin master
