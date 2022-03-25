pipeline {
    agent {
        node {
            label 'slave'
            customWorkspace '/home/jenkins/workspace'
        }
    }
    stages {
        stage("Check changeLog") {
            when {
                changelog ".*build*"
            }
        }
    }
}
