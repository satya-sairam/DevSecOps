

pipeline{
    agent any
    stages{
        stage('stage 1'){
            steps{
                sh '''
                   echo hello 
                '''
            }
        }
        stage('second stage'){
        steps{
            sh '''
                mvn -v 
            '''
        }
            stage('third stage'){
        steps{
            sh '''
                echo Third stage
            '''
        }
     



   
        }
    }
}

