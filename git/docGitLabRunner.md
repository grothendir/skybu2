# GitLab Runner

### Installation de GitLab Runner sur le serveur devops@139.99.202.71 (OS : centOS 7)
(cf : _https://docs.gitlab.com/runner/install/_)  
(cf : _https://docs.gitlab.com/runner/install/linux-repository.html_)


1. Add GitLab’s official repository:  
curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.rpm.sh | sudo bash

2. Install the latest version of GitLab Runner  
    `sudo yum install gitlab-runner`

3. Register the GitLab Runner  
    `sudo gitlab-runner register`  
    ci-dessous dialogue durant le process de register  
    /!\ Pour créér un shared runner passer par le module d'admin de gitlab _menu Runners_ pour récupérer le token de création d'un shared runner dans le bloc _Set up a shared Runner manually_
   ```
   Please enter the gitlab-ci coordinator URL (e.g. https://gitlab.com/):
     http://git.dtc.wf
   Please enter the gitlab-ci token for this runner:
     EVpE-skywFEDMxC3mZjC
   Please enter the gitlab-ci description for this runner:
     [skybu.ovh.com]: runner activé le 26/12 à 11h52
   Please enter the gitlab-ci tags for this runner (comma separated):
     non-specific-runner
   Registering runner... succeeded runner=EVpE-sky
   Please enter the executor: kubernetes, parallels, shell, ssh, docker-ssh+machine, docker, docker-ssh, virtualbox, docker+machine:
     shell
   Runner registered successfully. Feel free to start it, but if it's running already the config should be automatically reloaded!
   ```

