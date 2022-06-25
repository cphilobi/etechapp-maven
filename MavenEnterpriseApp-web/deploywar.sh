#!/bin/bash

# This script will automate the deployment of the .war package from the Jenkins server to the tomcat server over ssh.
# This script will be run from jenkins as a step in the deploy stage while calling the Jenkinsfile from GitHub.
# This script also makes use of the $HOME environmental variable

scp -i $HOME/mavenrepo/etechapp-maven/MavenEnterpriseApp-web/key $HOME/mavenrepo/etechapp-maven/MavenEnterpriseApp-web/target/MavenEnterpriseApplication.war ubuntu@172.31.21.31:/opt/tomcat/apache-tomcat-9.0.64/webapps
