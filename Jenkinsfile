pipeline { 
    agent any
 stages {
        stage ('Deploy') { 
             steps {
                 sh "sudo chmod +x ./app1.sh"
                 sh "./app1.sh"
             }
        }
    }   
}
