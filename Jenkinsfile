pipeline {
    agent none
    environment {
        def BUILDENV = "dev"
    }

    stages {
        stage("Stage 01") {
            agent {
                label 'slave'
            }
            when {
                beforeAgent false
                environment name: "BUILDENV", value: "dev"
            }
            steps {
                echo "This is stage 01"
            }
        }
    }
}