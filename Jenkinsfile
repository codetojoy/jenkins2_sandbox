#!groovy

stage "initial checkout"

node {
    git url: "https://github.com/codetojoy/jenkins2_sandbox.git"
}

stage "build"
node {
    def gradleHome = tool "G31"
    sh "${gradleHome}/bin/gradle clean test war"
}

stage "auto-deploy for DEV"
sh "echo ${env.WORKSPACE}"

/*

    stage "deploy to QA"

    stage "deploy to UAT"
*/
