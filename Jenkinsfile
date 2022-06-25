pipeline
     agent any
	 tools {
	     maven 'maven'
	}
	stages {
		stage ('1-GitClone') {
			steps {
				checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/cphilobi/etechapp-maven.git']]])
			}
		}
		stage ('2-CleanWS') {
			steps {
				sh 'mva clean'
			}
		}
		stage ('3-MavenBuild') {
			steps {
				sh 'mvn package'
			}
		}
		stage ('4-Deploy') {
		     steps {
			      sh '/home/ubuntu/mavenrepo/etechapp-maven/MavenEnterpriseApp-web.deploywar.sh'
		     }
		}
	}
}
