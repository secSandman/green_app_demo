# green_app_demo
A simple login form (GREEN) to demonstrate automating Blue-Green patch management using AWS Code-Deploy

The is a non production DEMO simple Bootstrap Log-In form.

The app includes a .SH script that can be executed as user data or by ansible within the java folder. This will update the applicaiton.properties file with your ec2 server IP 

Remeber this app is non production. If your were interested in using this app then remove the.sh files and instead use the Appspec.yml SOURCE option and modidy the Java classes and Files accordingly. Cheers. 

The app utilizes Java 1.8, Spring Boot, Tomcat Servlet and Bootstrap to quickly deploy a MVC model with Static content. 

└── src
    └── main
        └── java
            └── HelloController
            └── Application
            └── Application.properties <--- this is where you configure the hostname, IP and Port during bootstrap 
            └── updateAppProp.sh <--- update the above file with new IP when run 
After you've Clone the Repo 
 
gradle build

java -jar /build/libs/green_app-0.1.0.jar


 
 
