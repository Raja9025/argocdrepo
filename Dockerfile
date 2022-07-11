FROM openjdk:11
RUN mkdir /home/bc2113428/workspace_build
COPY /var/lib/jenkins/workspace/new project/target/spring-petclinic-2.6.0-SNAPSHOT.jar /home/bc2113428/workspace_build
EXPOSE 8080
CMD ["java", "-jar", "spring-petclinic-2.6.0-SNAPSHOT.jar"]
#EXPOSE 8080
