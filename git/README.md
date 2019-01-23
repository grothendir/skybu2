# Configuration communication Gitlab --> Jenkins :

Lien entre Gitlab & Jenkins et construction automatique

* Côté Gitlab : 
    - Générer un token d'accès personnel
    - permission read _repository et api (?)
    - Généner un webhook pour communiquer
    - syntaxe = URL_DU_VPS:PORT/project/NOM_PIPELINE
    - mettre les events qui vont lancer une notification (push au minimum)
 
* Côté Jenkins : 
    - Configurer le système
    - Gitlab et renseigner les informations du dépôt gitlab
    - API Token ==> le token d'accès personnel
    - Avancé , ignorer SSL Certificate Errors
    - Tester la connexion- Configurer Pipeline
    - Gitlab Connection ==> la config créée ci-dessus
    - Build when a change is pushed to Gitlab

# GIT

`sudo yum install git.x86_64`

    git config --global user.name "benoit r"
    git config --global user.email benoit@do.dtc.wf
    git config --global core.editor vim

`git config --list`

Indiquer qu'un répertoire est suivi par git : `$ git init`
 va créer un répertoire _.git_ dans le répertoire courant.

Récupérer le projet skybu

    git clone http://git.dtc.wf/skybu/skybu.git

comme il est privé, il faudra fournir le login/password du compte créé sur git.dtc.wf

# commandes d'usage

**Une commande git s'execute dans le contexte du répertoire versionné par git dans lequel on se trouve**

ajout de fichiers

`git add .` ajoute à l'index tout ce qui est nouveau/modifié dans le projet git du répertoire courant à cet instant T

`git commit` ajoute le contenu de l'index en l'état du dernier _git add_ dans le versionning local **indiquer une note de version**

On indique les fichier à ne pas versionner dans le fichier _.gitignore_

Pour voir les modifications non commitées : `git diff`

`git commit -a` commit touts les fichiers déjà ajoutés une fois dans la zone d'index sans passer par un _git add_ manuel.

### manipulation de fichiers

`git rm ` et ` git mv ` permettent de procéder à l'opération voulue tout en notifiant l'index direcement.

### historique de commit

`git log` affiche un historique chronologique inversé des commits effectués

### modifier un commit

`git commit --amend`

- Cette commande va reprendre l’index du commit précédent.
- L’éditeur s’ouvre avec les modifications et le message.
- Il est possible de modifier uniquement le message du commit.

### Désindexer un fichier déjà indexé

`git reset HEAD <file>`

### Réinitialiser un fichier modifié

- Pour faire revenir un fichier au niveau du précédent checkout

`git checkout -- <fichier>`

- Attention, vous perdrez définitivement les modifications apportées au
fichier depuis le dernier checkout

### Afficher les dépôts distants
- Pour visualiser les serveurs distants que vous avez enregistré, vous pouvez lancer la commande 

`git remote`

## Doc condensée
http://wall-skills.com/wp-content/uploads/2013/12/git-Cheat-Sheet_Wall-Skills1.pdf