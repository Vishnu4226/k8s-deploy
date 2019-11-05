FROM tomcat
LABEL maintainer="gonuguntavishnu@gmail.com"
COPY **target**/hello-1.0.war /us/local/tomcat/webapps
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
