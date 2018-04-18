FROM rp-generic
MAINTAINER Mat Bentley <mathewkbentley@gmail.com>

ENV JAVA_VERSION 1.8.0

# install jdk
RUN yum remove -y java &&\
    yum install -y java-$JAVA_VERSION-openjdk-devel

RUN /bin/bash -l -c 'echo export JAVA_HOME='"$(readlink $(readlink `which java`) | sed -e 's/\/jre\/bin\/java//')"' > /etc/profile.d/docker_init.sh'

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["/bin/bash"]
