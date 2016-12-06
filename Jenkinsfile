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

    sh "${env.WORKSPACE}/resources/stage.sh DEV"
    sh "${env.WORKSPACE}/resources/deploy.sh DEV"
}

stage "deploy to QA"
node {
    // this is a work-around. See https://issues.jenkins-ci.org/browse/JENKINS-33511
    env.WORKSPACE = pwd()

    sh "${env.WORKSPACE}/resources/stage.sh QA"
    sh "${env.WORKSPACE}/resources/deploy.sh QA"
}

stage "deploy to UAT"
node {
    // this is a work-around. See https://issues.jenkins-ci.org/browse/JENKINS-33511
    env.WORKSPACE = pwd()

    sh "${env.WORKSPACE}/resources/stage.sh UAT"
    sh "${env.WORKSPACE}/resources/deploy.sh UAT"
}
