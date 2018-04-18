FROM rp-generic
MAINTAINER Mat Bentley <mathewkbentley@gmail.com>

RUN yum install -y xorg-x11-server-Xvfb

ENV DISPLAY :99

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["Xvfb :99"]
