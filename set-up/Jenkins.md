
1. The Dockerfile is located at: [Files/Dockerfile](../Files/Dockerfile)
2. We created a dedicated Dockerfile because we wanted to use the Jenkins container itself as the agent so we needed to install docker and sudo and also, have the right permissions to run sudo.
3. Build the docker image
   
   `docker build  --no-cache -t jenkinsdockerfile .`
   
   
4. We run the Jenkins using below command:
   
   `docker run --name jenkins-new1 -d \
    -p 8070:8080 \
    -p 50000:50000 \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v jenkins_home:/var/jenkins_home \
    jenkinsdockerfile
`
5. Connect the Jenkins container to our network:
   
   `docker network connect gitea_default`
   
   ` docker network connect gitea_default e17c92353178`

6. Initial setup
   The following parameters were used to configure Jenkins, the pipeline and the connection to Gitea.
   ![Pipeline configuration](..images/jenkins_pipeline_config_generic-webhook-trigger.png)
   ![Pipeline configuration](..images/jenkins_pipeline_config_SCM)

   [Jenkins_Plugins.md](/Jenkins_Plugins)
   
   
