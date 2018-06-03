FROM node:8-slim

RUN apt-get update && \
  apt-get install -y bash make zip groff less python python-pip mime-support libyaml-dev libpython-dev

RUN pip install -U awscli s3cmd python-magic

RUN dpkg --add-architecture i386 && \
  apt-get update && \
  apt-get install -y Xvfb wine wine32

VOLUME /root/.aws
VOLUME /root/.electron
VOLUME /project

WORKDIR /project
CMD ["aws"]

