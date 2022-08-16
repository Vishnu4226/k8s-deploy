FROM tomcat
LABEL maintainer="gonuguntavishnu@gmail.com"
COPY ./target/hello2-1.0.war /usr/local/tomcat/webapps
#ADD ./target/hello2-1.0.war /usr/local/tomcat/webapps
CMD ["/bin/catalina.sh", "run"]
#CMD [“catalina.sh”, “run”]
