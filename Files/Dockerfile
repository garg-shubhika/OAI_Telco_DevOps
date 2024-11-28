FROM jenkins/jenkins:lts

USER root

# Install Docker and sudo
RUN apt-get update && \
    apt-get install -y docker.io sudo && \
    apt-get clean

# Add Jenkins user to the Docker group
RUN usermod -aG docker jenkins

# Allow Jenkins user to use sudo without password
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER jenkins
