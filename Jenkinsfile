node {
    stage("git clone"){
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/Vishnu4226/HellowWorld.git']]])
    }
    stage("maven build"){
        sh "mvn clean install"
        sh "cp /var/lib/jenkins/workspace/Assignment_1/target/*.war /opt/tomcat/apache-tomcat-9.0.27/webapps"
    }
    stage("Docker"){
        sh "docker --version"
        sh "docker build -t assignment2 ."
        sh "docker-compose up -d"
    }
}
