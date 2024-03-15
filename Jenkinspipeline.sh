pipeline{
 agent any
 environment{
   PATH="$JAVA_HOME/bin:$PATH"
   PATH="$MAVEN_PATH/bin:$PATH"
 }
stages{
 stage('Git-Clone'){
    steps{
        git credentialsId: 'Git-Hub', url: 'https://github.com/tirumalareddysanampudi/sample-pipeline.git'
    }
 }

}
}
