FROM ubuntu:18.04

USER root

WORKDIR /opt

RUN apt-get update \
    && apt-get install curl python unzip wget aria2 python-pip ffmpeg -y \
    && wget https://deb.nodesource.com/setup_14.x -O setup.sh && bash setup.sh \
    && apt-get update \ 
    && apt-get install -y nodejs \
    && node -v && npm -v \
    && pip install youtube-dl
RUN wget https://assets.hyui.xyz/file/AkhyuiStorage/DockerFiles/Youtube-dl-REST-1.0.zip -O /opt/Youtube-dl-REST-1.0.zip \
    && cd /opt && ls \ 
    && unzip Youtube-dl-REST-1.0.zip \  
    && mv Youtube-dl-REST-1.0/* ./ \
    && rm -rf Youtube-dl-REST-1.0 \
    && npm install

EXPOSE 80

CMD npm start