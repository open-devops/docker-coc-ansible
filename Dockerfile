#
# Image for Open DevOps Pipeline
#
#VERSION : 0.1
FROM docker.io/devopsopen/docker-base

#Maintainer
MAINTAINER Open DevOps Team <open.devops@gmail.com>

# Set up for ansible and docker
RUN mkdir /playbook && \
  yum -y install epel-release && \
  yum -y install ansible && \
  yum -y install docker

COPY playbook /playbook

WORKDIR /playbook

ENTRYPOINT ["/bin/bash"]
