FROM openjdk:11
RUN useradd -ms /bin/bash user1
RUN usermod -aG sudo user1
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN mkdir /home/user1/workbuild
WORKDIR /home/user1/workbuild
COPY target/spring-petclinic-2.6.0-SNAPSHOT.jar /home/user1/workbuild
EXPOSE 8080
CMD ["java", "-jar", "spring-petclinic-2.6.0-SNAPSHOT.jar"]
#EXPOSE 8080
