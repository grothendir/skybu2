<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#sec-1">1. Désinstallation des éventuelles anciennes versions de Docker</a></li>
<li><a href="#sec-2">2. Installation de Docker CE</a>
<ul>
<li><a href="#sec-2-1">2.1. Installation des paquets requis</a></li>
<li><a href="#sec-2-2">2.2. Configuration du dépôt <b>stable</b></a></li>
<li><a href="#sec-2-3">2.3. (optionnel) activer les dépôts <b>edge</b> et <b>test</b></a></li>
</ul>
</li>
<li><a href="#sec-3">3. Installation de Docker CE</a>
<ul>
<li><a href="#sec-3-1">3.1. Installer la <b>dernière</b> version de Docker CE</a></li>
<li><a href="#sec-3-2">3.2. (optionnel) Installer une version spécifique de Docker CE</a></li>
<li><a href="#sec-3-3">3.3. Démarrer Docker</a></li>
<li><a href="#sec-3-4">3.4. Test de lancement de l'image hello-world</a></li>
</ul>
</li>
</ul>
</div>
</div>

installation de docker pour CentOS

**ATTENTION**: les installations diffèrent selon les distributions Linux (Centos, 
Debian, Ubuntu, Fedora)

Référence: [installation de Docker CE pour CentOS](https://docs.docker.com/install/linux/docker-ce/centos/)

# Désinstallation des éventuelles anciennes versions de Docker<a id="sec-1" name="sec-1"></a>

    $ sudo yum remove docker \
                      docker-client \
                      docker-client-latest \
                      docker-common \
                      docker-latest \
                      docker-latest-logrotate \
                      docker-logrotate \
                      docker-selinux \
                      docker-engine-selinux \
                      docker-engine

# Installation de Docker CE<a id="sec-2" name="sec-2"></a>

Il ya trois façons d'installer Docker:
-   via les dépôts
-   via le package .rpm
-   via un script

On va le faire via les dépôts.

## Installation des paquets requis<a id="sec-2-1" name="sec-2-1"></a>

    $ sudo yum install -y yum-utils \
      device-mapper-persistent-data \
      lvm2

## Configuration du dépôt **stable**<a id="sec-2-2" name="sec-2-2"></a>

    $ sudo yum-config-manager \
        --add-repo \
        https://download.docker.com/linux/centos/docker-ce.repo

## (optionnel) activer les dépôts **edge** et **test**<a id="sec-2-3" name="sec-2-3"></a>

    $ sudo yum-config-manager --enable docker-ce-edge

    $ sudo yum-config-manager --enable docker-ce-test

On peut toujours désactiver **edge** et **test**:

    $ sudo yum-config-manager --disable docker-ce-edge

# Installation de Docker CE<a id="sec-3" name="sec-3"></a>

## Installer la **dernière** version de Docker CE<a id="sec-3-1" name="sec-3-1"></a>

    $ sudo yum install docker-ce

Vérifier la correspondance des fingerprint:
060A 61C5 1B55 8A7F 742B 77AA C52F EB6B 621E 9F35

## (optionnel) Installer une version spécifique de Docker CE<a id="sec-3-2" name="sec-3-2"></a>

cf Doc: [version spécifique](https://docs.docker.com/install/linux/docker-ce/centos/#install-docker-ce-1).

## Démarrer Docker<a id="sec-3-3" name="sec-3-3"></a>

    $ sudo systemctl start docker

## Test de lancement de l'image hello-world<a id="sec-3-4" name="sec-3-4"></a>

    $ sudo docker run hello-world

Ceci termine l'installation de Docker. Il faut lancer les commandes docker en
 **sudo**.
