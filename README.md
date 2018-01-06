# Introduction
Eureka server provides discovery service for registering of microservices. This server can be run locally as standalone, with docker or can be deployed on Pivotal Cloud Foundry platform.
The docker image that is created by this project is meant to use in other projects as a Eureka server component.

# Software needed
1.  [Oracle Jdk] (hhttp://www.oracle.com/technetwork/java/javase) 1,8 JDK from Oracle
2.	[Apache Maven] (http://maven.apache.org)
3.	[Docker] (http://docker.com)

# Running as standalone server locally
To run the server locally, you should run the command:

```
mvn clean spring-boot:run
```

# Building the Docker Image
To build the code for Eureka server as a docker image, open a command-line window change to the directory where you have the source code.

Run the following maven command.  This command will execute the [Spotify docker plugin](https://github.com/spotify/docker-maven-plugin) defined in the pom.xml file.  
```
mvn clean package docker:build
```
Running the above command at the root of the project directory will build the project. If everything builds successfully you should see a message indicating that the build was successful.

# Running the service on PCF
Now you may use cf push to deploy and start the server. To deploy the microservice, change to the parent directory in the source code then login to PCF platform with the following cf command:
```
cf login -a https://api.local.pcfdev.io --skip-ssl-validation
```
https://api.local.pcfdev.io points to PCF Dev on local machine for PCF, change the URL to your target PCF installation.
   
then to deploy the Eureka server run the following cf command:
```
cf push
```
If cf pushes the microservice without any error the server will be running on PCF. It will show up under the apps in the space you have pushed the microservice.