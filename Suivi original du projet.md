# PROJET SKYBU


# Relation Client

## 10/01/2019

### Point journalier DevOps

* Support de présentation : LibreOffice Impress (Kynam)
* Répartition des rôles : 
    - Préparation infrastructure : Ulysse+Soumana (kvm) ;
    - dépot Code (gestionnaire de code source de programmation) : Yann (GitLab sur serveur local, en VM);
    - Test, Intégration : Kynam+Soumana (Jenkins) ;
    - Déploiement : Benoit (Ansible).
    
* Faire Ansible déploiement, en respectant diagramme fonctionnel (Benoit).

* Terraform, orienté AWS.
* Plan présentation :
    - le contexte ;
    - l'équipe (noms, fonctions dans le groupe, répartitiondes tâches) ;
    - diagramme fonctionnel (logiciel yED ?) : la solution que nous envisageons ;
    - diagramme technique + justification des choix pour chaque phase. Chacun aura sa partie à présenter.
    - Retour d'expérience : ce que ça nous a apporté, travail en groupe, synthèse.
    - Démonstration.

## 04/01/2018

### Point journalier DevOps, en groupe cet après-midi.

* Site web, app. JAVA. 1ers éléments copés lundi sur Virtus1er par Sylvain. (*10/01/2019 retardé car insatisfait du code)
* Faire 1er diagramme fonctionnel = accessible pour non informaticiens. Depuis les Dev' jusqu'à l'utilisateur final. 
    - Est ce que, à tel stade, besoin d'un retour (monitoring)/supervision.
    - Prévoir système de monté en charge coté client = si là ça casse, si là ça s'arrête.
    - Prévoir évolution du projet.
    - Télémétrie : JMETER.
    - En tant que dev' je dois pouvoir...En tant qu'utilisateur final, je dois pourvoir.
* AU final, lorsque modif' envoyée par dev' ---> modif visibvle sur le site web en production.

## 20/12/2018

### Point journalier DevOps

* Serveur SKYBU :
        * Mise en place doc partagée (en MarkDown) sur GitLab (Benoit)  
        * Créer utilisateur 'devops' sur le serveur et sur GitLab (Yann)  
        * Installer/tester : -gcloud (Soumana/Kynam)  
                            -docker (Ulysse/Benoit)  
* chacun documente ses actions sur le serveur.
* Sauvegarder cette config GitLab avec tout dedans.
* But client : serveur vide, déployer tout en automatique dessus.

* Courriel envoyé au client pour plus de précisions (questions réunion du 2018/12/14.
* GITLAB : doit transférer une image par pipeline puis lance un script shell. Déploiement du script shell : gérér l'ID Google CLoud du bon projet (soi une variable dans le script, soi `gcloud init`)
* Génération automatique de conteneur : openshift, jenkins,...

## 14/12/2018

### Situation

-Interlocuteur : Sylvain BESSERON info@thefiveops.com  
-La société vient de racheter un département Développement/Recherche.  
-Il nous sollicite pour en faire l'info gérance.  
-Faire proposition par courriel : info@thefiveops.com  
-Travail en V jusqu'ici. Chef vient de partir à la retraite.  
-Aucune doc de developpement.  
-Aucune traçabilité.  

### Besoins

-Passage à l'agilité.
- Visibilité du travail journalier des developpeurs.
- Serveur de dépôt :  
        *Infogérance.  
        *Sortie de rapprots, de temps en temps (infos commits à telle heure, etc).  
        *GitLab doit marcher en automatique sur grande période.  
        *dev en Maven, Java (racheté) et un autre langage.  
- mettre en place documentation
- traçabilité
=> mettre en place une chaîne pour la mise en production des outils informatiques rachetés.

### Indices Techniques et de Gestion

-SSH FS permet de créer un tunnel sur un volume distant, même sur système embarqué. Utile dans la chaine.  
-Mettre en place doc commune au fur et à mesure, utile pour présentation finale.  
-Télémétrie côté web. a placer au bon endroit dans la chaîne.  
-Notificationq aux developpeurs quand erreurs "serveur d'intégration" ?  

### Point journalier DevOps SKYBU - même jour

Questions qui en ressortent :  
-Maven = ?  
-Effectif developpeur ?  
-Product Owner ?  
-Où en êtes vous dans l'agilité ? Developpeur avec expérience en agilité ?  
-Combien de projets à prendre en compte ?  
-Quelle frquence de mise en prod' jusqu'ici ?  
(-Quelles infos dans les rapports ? Que voulez vous suivre ?)  
(-Réunion avec vous tous les combiens ?)  
