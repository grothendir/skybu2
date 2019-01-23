<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#sec-1">1. introduction</a>
<ul>
<li><a href="#sec-1-1">1.1. tableau de bord</a></li>
<li><a href="#sec-1-2">1.2. services</a>
<ul>
<li><a href="#sec-1-2-1">1.2.1. instances</a></li>
<li><a href="#sec-1-2-2">1.2.2. images</a></li>
<li><a href="#sec-1-2-3">1.2.3. Elastic Block Store</a></li>
<li><a href="#sec-1-2-4">1.2.4. Réseau et sécurité</a></li>
<li><a href="#sec-1-2-5">1.2.5. Équilibrage de charge</a></li>
<li><a href="#sec-1-2-6">1.2.6. Auto Scaling</a></li>
</ul>
</li>
</ul>
</li>
<li><a href="#sec-2">2. choisir un type d'instance</a></li>
<li><a href="#sec-3">3. Lancer une instance</a></li>
<li><a href="#sec-4">4. Se connecter à une instance</a></li>
<li><a href="#sec-5">5. La ligne de commande d'AWS</a></li>
</ul>
</div>
</div>

# introduction<a id="sec-1" name="sec-1"></a>

## tableau de bord<a id="sec-1-1" name="sec-1-1"></a>

photo
-   1) la liste des ressources qui tournent dans EC2. Par exemple "Instances en cours" indique le nombre de serveurs qui tournent.
-   2) le bouton "lancer une instance", si on souhaite lancer un nouveau serveur.
-   3) la liste des sous-services de EC2.

## services<a id="sec-1-2" name="sec-1-2"></a>

### instances<a id="sec-1-2-1" name="sec-1-2-1"></a>

cette page indique l'état des serveurs.

photo

<file:///home/ulysse/Images/'Capture du 2019-01-11 10-29-04.png'>

### images<a id="sec-1-2-2" name="sec-1-2-2"></a>

Le lien AMI affiche les images de vos instances EC2 (AMI signifie : Amazon Machine Image).

On se sert souvent d'un AMI au départ pour lancer un serveur EC2 préconfiguré . 
On récupèrera pour notre part un AMI proposé par Amazon ou par sa communauté sur le "Marketplace" (on y trouve des AMI gratuits et payants).

Il est aussi possible de créer vos propres AMI à partir de vos serveurs. L'intérêt est de permettre de prendre un instantané (backup) d'un serveur.
d'en faire une sauvegarde, ce qui permet de lancer un nouveau serveur exactement dans le même état.

### Elastic Block Store<a id="sec-1-2-3" name="sec-1-2-3"></a>

La section **Volumes** affiche tous les disques utilisés par les serveurs. Avec AWS, on distingue en effet l'instance
(juste la puissance de calcul du processeur) et les disques (Elastic Block Store, ou EBS). Les volumes EBS sont en quelque sorte des disques durs.

Quant aux **Instantanés**, ce sont les sauvegardes des disques EBS de vos serveurs.

### Réseau et sécurité<a id="sec-1-2-4" name="sec-1-2-4"></a>

Les **Groupes de sécurité** constituent les règles de sécurité pour gérer le trafic entrant et sortant des serveurs.
 C'est comme ça que l'on peut mettre en place un firewall (pare-feu)  pour protéger les serveurs.

Les **Adresses IP Elastic** vous permettent d'affecter une IP statique aux serveurs. C'est utile car, par défaut, un serveur
 que l'on redémarre va en général changer d'adresse IP. Grâce aux IP Elastic,on pouvez faire en sorte que le serveur garde la même IP 
(ce qui est indispensable si on veux héberger correctement un site web).

Les **Paires de clés** affichent les paires de clés créées pour accéder aux serveurs en SSH.

### Équilibrage de charge<a id="sec-1-2-5" name="sec-1-2-5"></a>

photo
En cas de traffic important, l'équilibrage de charge (Elastic Load Balancing)  permet d'envoyer le trafic vers plusieurs serveurs en choisissant
 automatiquement le serveur qui est actuellement le moins occupé.

### Auto Scaling<a id="sec-1-2-6" name="sec-1-2-6"></a>

Si vous avez un trafic qui augmente ou qui diminue, l'Auto Scaling vous permet d'ajouter ou de retirer des serveurs en fonction du trafic.

# choisir un type d'instance<a id="sec-2" name="sec-2"></a>

# Lancer une instance<a id="sec-3" name="sec-3"></a>

# Se connecter à une instance<a id="sec-4" name="sec-4"></a>

# La ligne de commande d'AWS<a id="sec-5" name="sec-5"></a>
