# Jenkins in Docker

You can run jenkins in docker: 
    
    docker run -p 8080:8080  michaelneale/jenkins-docker

This will download, and then run Jenkins in a docker container - on port 8080.

You can see your docker conatiner running with:

    docker ps

If you with to use a volume outside to store your workspace, you can with bind mounting and setting the JENKINS_HOME directory environment variable.

Take a look at http://docker.io for more details. 



