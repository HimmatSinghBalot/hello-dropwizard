# Introduction

The Dropwizard Hello World application

# Running The Application

To test the example application run the following commands.

* To package the example run the following from the root dropwizard directory.

        mvn package

* To run the server run.

        java -jar target/hello-dropwizard-1.0-SNAPSHOT.jar server example.yml

* To hit the Hello World example (hit refresh a few times).

	http://localhost:8080/hello-world

	http://localhost:8080/hello-world?name=World

* The healthcheck resource runs the health check class we wrote. You should see something like this:

  * deadlocks: OK
  * template: OK

# Dev Environment Exercise (Please ignore)

## Background
The company you work for is building a dropwizard Restful services.
They have completed their first sprint of work and are ready to begin preparing to ship it. Being a DevOps genius, you know that it will be difficult to reproduce bugs and increase  ownership if there's not an easy way to  reliably run these services locally as you would in production. At the same time, you want to get some automation that can be reused in production.

## Your Task
Your next task is to take the recently built hello-dropwizard service:

- Read the documentation for the Hello Dropwizard service and test them to make sure they work as expected.
- Once you understand their usage, use preferred tools and technology to create automation that stands up local dev environment of the stack.
- You discuss with the engineers that in order for a service oriented architecture to work best, there will need to be some http routing in front of the services so that requests go to the right places. When the stack is deployed, accessing `/hello` should route to the *hello-dropwizard/hello-world*. Use technology and tools you know to implement this behavior.

*Bonus (Optional)*
- If you haven't already, create an efficient docker image based on best practices for at least one service. Be prepared to explain why it's efficient.

- I will explain why it is efficent during Discussion. I have used docker container shell to build your code and 

## Results

Make the dev environment automation available via a public github repo with any instructions on how to run your dev environment in an accompanying `README.md` file. Send it in and be prepared to discuss it.


### Description for task : 
I have used google cloud's container shell for creating static docker image. i have fork your application code repository and bulid complete docker image for running Dropwizard Hello World application.
 
 ##### Tool Used : 
   - Docker - used google cloud shell
   - git

##### Development Steps for running dropwizard application : 
- Clone repository in your local directory and execute below commands : 

 ```sh
 $ git clone https://github.com/HimmatSinghBalot/hello-dropwizard.git
 $ cd hello-dropwizard
 $ docker build -t demo-app .
 $ docker run -d -p 8080:8080 demo-app
```

#### Result : 
Verify the deployment by hitting below address :

 ```sh
 *himmat_singh_balot@cloudshell:~/project/hello-dropwizard (xenon-effect-192309)$ curl http://localhost:8080/hello-world?name=Emirates
{"id":1,"content":"Hello, Emirates!"}
```
