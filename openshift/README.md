# Openshift

- Intègre le moteur de conteneurs **Docker** et l'orchestrateur **Kubernetes**
- Fonctionne sur la base de micro-services indépendants


https://learn.openshift.com/ pour apprendre à l'utiliser

https://www.youtube.com/watch?v=7JHtmQLeMh8 OpenShift  le PaaS à la sauce Kubernetes et Docker (Gabriel Bechara)



```
minishift start
minishift oc-env
oc status
oc login # pour se créer un untilisateur (oc-user/oc-user)
oc new-project <projectname> # pour créér le projet ou via le bouton dans la console web (pouet)
oc new-app https://github.com/openshift/nodejs-ex -l name=oc-user # ajout d'une appli au projet du user oc-user
```
ajouter minishift au path  
`export PATH=$PATH:/home/benoit/bin/minishift-1.28.0-linux-amd64`

rendre oc completion accessible  
`oc completion -h`  
`oc completion bash > bash_completion.sh`  
`source bash_completion.sh`
