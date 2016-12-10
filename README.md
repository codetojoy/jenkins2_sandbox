# jenkins2_sandbox

* sandbox for experimentation with Jenkins2 "pipeline as code"
* a simple Greeting webapp contains a JSP page to show greetings
    * it also has a `build timestamp`, `build number`, and `version`
* the setup involves 4 Docker containers: one for Jenkins and 3 Tomcat environments
* the use-case is:
    * Jenkins will build the WAR file, pulling from Github
    * Jenkins will auto-deploy to the DEV environment
    * the build uses the new Pipeline-as-Code, and will wait for user-input to deploy to QA and/or UAT 
    
