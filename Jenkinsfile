#It is first assignment in Happiest Minds
node {
    stage("git clone"){
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/Vishnu4226/HellowWorld.git']]])
    }
    stage("maven build"){
        sh "mvn clean install"
        sh "cp /var/lib/jenkins/workspace/DemoProject/target/*.war /opt/tomcat/apache-tomcat-8.5.47/webapps"
    }
