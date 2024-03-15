pipeline {
 agent any
 environment {
    JAVA_HOME ="/usr/lib/jvm/java-11-openjdk-amd64"
    PATH ="$JAVA_HOME/bin:$PATH"
    MAVEN_PATH ="/usr/share/maven"
    PATH ="$MAVEN_PATH/bin:$PATH"
    }
 stages{
    stage('Git-Checkout'){
        steps{
       git branch: 'tirumala-Branch', credentialsId: 'Git-HUB-CREDENTIALS', url: 'https://github.com/tirumalareddysanampudi/maven_Project.git'
    }
        }
    }
    }
    }
