FROM rp-java
MAINTAINER Mat Bentley <mathewkbentley@gmail.com>

ENV GRADLE_VERSION 3.4.1

# install gradle
RUN wget https://services.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip &&\
    mkdir -p /etc/alternatives/gradle &&\
    unzip -d /etc/alternatives/gradle gradle-$GRADLE_VERSION-bin.zip &&\
    ln -s /etc/alternatives/gradle/gradle-$GRADLE_VERSION /opt/gradle

ENV PATH $PATH:/opt/gradle/bin
