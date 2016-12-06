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

    def workspace = env.WORKSPACE
    sh "echo TRACER " + workspace
}

/*
stage "deploy to QA"
sh "echo TRACER QA"

stage "deploy to UAT"
sh "echo TRACER UAT"
*/
