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

// -------------------------- DEV (auto-deploy)
stage "auto-deploy for DEV"
node {
    def ENV = "DEV"
    // this is a work-around. See https://issues.jenkins-ci.org/browse/JENKINS-33511
    env.WORKSPACE = pwd()

    sh "${env.WORKSPACE}/resources/stage.sh ${ENV} ${env.BUILD_NUMBER}"
    sh "${env.WORKSPACE}/resources/deploy.sh ${ENV} ${env.BUILD_NUMBER}"
}

// -------------------------- QA
stage "deploy to QA"
timeout(time:2, unit:'DAYS') {
    input message:'Approve deployment to QA?'
}

node {
    def ENV = "QA"
    env.WORKSPACE = pwd()

    sh "${env.WORKSPACE}/resources/stage.sh ${ENV} ${env.BUILD_NUMBER}"
    sh "${env.WORKSPACE}/resources/deploy.sh ${ENV} ${env.BUILD_NUMBER}"
}

// -------------------------- UAT 
stage "deploy to UAT"
timeout(time:2, unit:'DAYS') {
    input message:'Approve deployment to UAT?'
}

node {
    def ENV = "UAT"
    env.WORKSPACE = pwd()

    sh "${env.WORKSPACE}/resources/stage.sh ${ENV} ${env.BUILD_NUMBER}"
    sh "${env.WORKSPACE}/resources/deploy.sh ${ENV} ${env.BUILD_NUMBER}"
}
