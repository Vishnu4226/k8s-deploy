FROM tomcat
LABEL maintainer="gonuguntavishnu@gmail.com"
COPY ./webapp/target/hello2-1.0.war /usr/local/tomcat/webapps
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
