# FROM node:14.17.0-slim

# # USER node

# WORKDIR /home/node/app

# RUN npm install -g pm2

# CMD ["tail", "-f", "/dev/null"]

FROM httpd

LABEL maintener="CompJunior"

WORKDIR /usr/local/apache2

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update

RUN apt-get install -y -q --no-install-recommends \ apt-transport-https \ build-essential \ ca-certificates \ curl \ git \ libssl-dev \ python \ rsync \ software-properties-common \ devscripts \ autoconf \ ssl-cert \ && apt-get clean

RUN curl -sl https://deb.nodesource.com/setup_lts.x | bash .
RUN apt-get install -y nodejs

RUN npm i -g pm2
RUN pm2 startup
RUN mkdir /home/uploads

COPY ./http.conf /usr/local/apache2/conf/http.conf

ENTRYPOINT pm2 resurrect; http-foreground

EXPOSE 80