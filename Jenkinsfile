pipeline {
    agent {
        node {
            label "slave"
            customWorkspace '/home/jenkins/workspace'
        }
    }
    stages {
        stage("Build using fileName") {
            when {
                changeset pattern: "*.md"
            }
            steps {
                echo "This will be built only when the regex matches the files in a repo"
            }
        }
    }
}