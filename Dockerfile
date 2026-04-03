FROM tomcat:9.0-jdk11

# Clean default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy Tomcat users config
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

# Copy application
COPY target/java-web-app.war /usr/local/tomcat/webapps/

EXPOSE 8080
