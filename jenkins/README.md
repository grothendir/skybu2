# JENKINS

Jenkins is an open source, Java-based automation server that offers an easy way to set up a continuous integration and continuous delivery (CI/CD) pipeline.

Continuous integration (CI) is a DevOps practice in which team members regularly commits their code changes to the version control repository, after which automated builds and tests are run. Continuous delivery (CD) is a series of practices where code changes are automatically built, tested and deployed to production.

## Installation de Jenkins

On suit la doc du site : https://linuxize.com/post/how-to-install-jenkins-on-centos-7/


Adresse de la doc officielle : https://jenkins.io/doc/

### Résumé de l'install

Pour les captures d'écran voir l'url linuxize.

To install Jenkins on your CentOS system, follow the steps below:

  1) Jenkins is a Java application, so the first step is to install Java. Run the following command to install the OpenJDK 8 package:  
`sudo yum install java-1.8.0-openjdk-devel`

  2) The next step is to enable the Jenkins repository. To do that, import the GPG key using the following curl command :  
`curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo`

  3) And add the repository to your system with:  
    `sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key`

  4) Once the repository is enabled, install the latest stable version of Jenkins by typing :  
`sudo yum install jenkins`

  5) After the installation process is completed, start the Jenkins service with :  
`sudo systemctl start jenkins`

  6) To check whether it started successfully run :  
`systemctl status jenkins`

  7) Finally enable the Jenkins service to start on system boot.  
`sudo systemctl enable jenkins`

  8) Adjust the Firewall  
If you are installing Jenkins on a remote CentOS server that is protected by a firewall you need to port 8080.  
Use the following commands to open the necessary port :  
`sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp && sudo firewall-cmd --reload`

  9) Setting Up Jenkins  
To setup your new Jenkins installation, open your browser and type your domain or IP address followed by port 8080:  
*http://your_ip_or_domain:8080*  
A screen will appear, prompting you to enter the Administrator password that is created during the installation.  
Use the following command to print the password on your terminal :  
`sudo cat /var/lib/jenkins/secrets/initialAdminPassword`

  10) On the next screen you will be asked whether you want to install the suggested plugins or to select specific plugins. **Click on the Install suggested plugins box**, and the installation process will start immediately.

  11) Once the installation is complete, you will be prompted to set up the first administrative user. Fill out all required information and click Save and Continue.

  12) On the next page you will be asked to set the URL for the Jenkins instance. The URL filed will be populated with an automatically generated URL.
To complete the setup confirm the URL by clicking on the Save and Finish button.

  13) Finally, click on the Start using Jenkins button and you will be redirected to the Jenkins dashboard logged in as the admin user you have created in one of the previous steps.

## intallation de maven
La version par déaut dans le dépot suffit  
`sudo yum istall maven`