pipeline {
    agent {
        node {
            label 'runner'
            customWorkspace '/home/jenkins/workspace'
        }
    }
    
    options {
        ansiColor('xterm')
    }

    environment {
        def buildType = ''
        def buildDescription = ''
        def buildVersion = ''
        def credentials = ''
        def undergoneTesting = false
    }

    stages {
        stage('GetInputs') {
            input {
                message 'Please provide the build values'
                ok "Commence Build"
                submitter "jenkins"
                submitterParameter "whoIsSubmitter"
                parameters {
                    choice(name: 'buildType', choices: 'Development\nProduction\nTest', description: 'Environment to build to (dev, test, production)')
                    text(name: 'buildDescription', defaultValue: 'Enter the build description here', description: 'Build description')
                    string(name: 'buildVersion', defaultValue: 'v1.0', description: 'Enter the build version')
                    booleanParam(name: 'undergoneTesting', defaultValue: false, description: 'Has the current build undergone extensive testing?')
                    credentials(name: 'credentials', description: 'Please select the appropriate credentials', required: true)
                }
            }
            steps {
                echo "Deploying To: ${buildType}"
                echo "This build aims to: ${buildDescription}"
                echo "Build revision: ${buildVersion}"
                script {
                    if("${undergoneTesting}") {
                            echo 'This build has been tested.'
                    } else {
                        echo "This build still needs to be tested."
                    }
                }
               
                echo "Tested?: ${undergoneTesting}"
                echo "Credentials: ${credentials}"
            }
        }
    }
}
