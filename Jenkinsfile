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
    // this is a work-around. See https://issues.jenkins-ci.org/browse/JENKINS-33511
    env.WORKSPACE = pwd()

    sh "${env.WORKSPACE}/resources/stage.sh DEV ${env.BUILD_NUMBER}"
    sh "${env.WORKSPACE}/resources/deploy.sh DEV ${env.BUILD_NUMBER}"
}

stage "deploy to QA"
node {
    // this is a work-around. See https://issues.jenkins-ci.org/browse/JENKINS-33511
    env.WORKSPACE = pwd()

    sh "${env.WORKSPACE}/resources/stage.sh QA ${env.BUILD_NUMBER}"
    sh "${env.WORKSPACE}/resources/deploy.sh QA ${env.BUILD_NUMBER}"
}

stage "deploy to UAT"
node {
    // this is a work-around. See https://issues.jenkins-ci.org/browse/JENKINS-33511
    env.WORKSPACE = pwd()

    sh "${env.WORKSPACE}/resources/stage.sh UAT ${env.BUILD_NUMBER}"
    sh "${env.WORKSPACE}/resources/deploy.sh UAT ${env.BUILD_NUMBER}"
}
