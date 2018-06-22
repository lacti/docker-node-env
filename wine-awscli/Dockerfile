FROM electronuserland/builder:wine

# Install node.js 8
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
  apt-get install -y nodejs
RUN npm install --global npm yarn npx

# Install build and python environment for awscli
RUN apt-get update && \
  apt-get install -y bash make zip groff less python python-pip mime-support libyaml-dev libpython-dev

RUN pip install -U pip awscli s3cmd python-magic

VOLUME /root/.aws
VOLUME /root/.electron
VOLUME /root/.cache
VOLUME /project

WORKDIR /project
CMD ["aws"]

