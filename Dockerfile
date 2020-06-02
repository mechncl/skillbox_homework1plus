FROM node:alpine

RUN npm update -g npm && \
    npm install -g grunt-cli && \ 
    mkdir  /clumsybird

COPY . /clumsybird
WORKDIR /clumsybird

RUN npm install

CMD grunt connect
EXPOSE 8001


