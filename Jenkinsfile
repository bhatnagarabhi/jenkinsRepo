pipeline {
    agent none
    options {
        
    }
    environment {
        def BUILDENV = "production"
    }

    stages {
        stage("Stage 01") {
            agent {
                label 'slave'
            }
            when {
                beforeAgent true
                environment name: "BUILDENV", value: "dev"
            }
            steps {
                echo "This is stage 01"
            }
        }
    }
}