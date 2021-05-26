FROM tomcat
LABEL maintainer="gonuguntavishnu@gmail.com"
COPY ${{Build.ArtifactStagingDirectory}}/hello-1.0.war /usr/local/tomcat/webapps
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
