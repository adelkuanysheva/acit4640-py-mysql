FROM nginx

RUN mkdir /etc/nginx/templates
COPY default.conf.template /etc/nginx/templates

RUN apt-get update
RUN apt-get -y install wget unzip

RUN mkdir /app
COPY frontend/ /app/src 

WORKDIR /app/src
RUN cp index.html /usr/share/nginx/html

EXPOSE 8000

