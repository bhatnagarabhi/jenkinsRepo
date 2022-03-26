pipeline {
    agent {
        node {
            label 'slave'
            customWorkspace '/home/jenkins/workspace'
        }
    }
    stages {
        stage("Running multiple stages in parallel") {
            failFast true
            parallel {
                
                stage("Stage #1") {
                    steps {
                        echo "Running Stage #1"
                        sleep(10)
                    }
                    
                }
                
                stage("Stage #2") {
                    steps {
                        echo "Runnning Stage #2"
                        sleep(2)
                        error "Simulating an error on step 2"
                    }
                }

                stage("Stage #3") {
                    steps {
                        echo "Runnning Stage #3"
                        sleep(10)
                    }
                }

            }
        }
    }
}