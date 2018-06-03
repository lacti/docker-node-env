FROM node:8-alpine

# https://github.com/mesosphere/aws-cli/blob/master/Dockerfile
RUN apk -v --update add \
        python \
        py-pip \
        groff \
        less \
        mailcap \
        && \
    pip install --upgrade awscli==1.14.5 s3cmd==2.0.1 python-magic && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*

RUN apk -v --update add bash

VOLUME /project
WORKDIR /project
ENTRYPOINT ["aws"]

