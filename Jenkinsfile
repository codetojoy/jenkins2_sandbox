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
node {
    sh "echo TRACER ${env.WORKSPACE}"
}

/*
stage "deploy to QA"
sh "echo TRACER QA"

stage "deploy to UAT"
sh "echo TRACER UAT"
*/
