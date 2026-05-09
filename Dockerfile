FROM tomcat:9.0
COPY tomcat-users.xml /usr/local/tomcat
COPY target/*.war /usr/local/tomcat/webapps/myweb.war

