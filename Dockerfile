FROM openjdk:8
EXPOSE 8030
ADD target/HospitalManagement.jar HospitalManagement.jar
ENTRYPOINT ["java","-jar","/HospitalManagement.jar"]
