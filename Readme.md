Built on Java 17

Steps to build
1) mvn clean install

Steps to run a mongodb
1) docker run -d -p 27017:27017 --name=mongo mongo

Steps to run the web app:
1) mvn spring-boot:run
ou
2) java -jar knote-java-0.0.1-SNAPSHOT.war

Steps to build docker image
1) docker build . -t learnk8s/knote-java:1.0.0

Create docker network
$docker network create knote

Run mongodb within network knote
$docker run -d --name=mongo --rm --network=knote mongo

Run the app in docker
$docker run --name=knote-java --rm --network=knote -p 8080:8080 -e MONGO_URL=mongodb://mongo:27017/dev learnk8s/knote-java:1.0.0

Steps to deploy into Kubernetes:
$kubectl apply -f kube

Watch the Pods coming alive with:
$kubectl get pods --watch

Sonar Scan:
$ mvn clean verify sonar:sonar -Dsonar.token=sqp_c55f49db5dacf530b9ebd883596c3ec5edb07434 -Dsonar.projectKey=knote-key

 
   
