FROM openjdk:8
EXPOSE 8030
ADD target/HospitalManagement.war HospitalManagement.war
ENTRYPOINT ["java","-jar","/HospitalManagement.war"]
