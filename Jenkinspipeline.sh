pipeline{
 agent any
 environment{
   PATH="$MAVEN_PATH/bin:$PATH"
 }
stages{
 stage('Git-Clone'){
    steps{
        git credentialsId: 'Git-Hub', url: 'https://github.com/tirumalareddysanampudi/sample-pipeline.git'
    }
 }
 stage('MVN-Clean-Compile'){
  steps{
  sh "mvn clean compile"
  }
 }
 stage('MVN-package'){
  steps{
  sh "mvn package"
  }
 }
  stage('MVN-Deploy'){
  steps{
  sh """
   sudo su -
   cp /root/.jenkins/workspace/pipeline-project-sample/target/samplepipeline-1.0.jar  /opt/apache-tomcat-9/webapps/
   """
  }
 }

}
}
