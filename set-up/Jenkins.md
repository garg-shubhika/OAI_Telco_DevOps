
1. The Dockerfile is located at: [Files/Dockerfile](../Files/Dockerfile)
2. Build the docker image
   
   `docker build  --no-cache -t jenkinsdockerfile .`
   
3. We run the Jenkins using below command:
   
   `docker run --name jenkins-new1 -d \
    -p 8070:8080 \
    -p 50000:50000 \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v jenkins_home:/var/jenkins_home \
    jenkinsdockerfile
`
4. Connect the Jenkins container to our network:
   
   `docker network connect gitea_default`
   
   ` docker network connect gitea_default e17c92353178`

