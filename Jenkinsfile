stage "initial checkout TEST DEC 2016"

node {
    git url: "https://github.com/codetojoy/jenkins2_sandbox.git"
    def gradleHome = tool "G31"
    stage "build"
    sh "${gradleHome}/bin/gradle clean test war"
}
