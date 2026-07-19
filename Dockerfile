FROM alpine:latest
MAINTAINER syuankai

ARG openjdk_v=25
ARG minecraft_v=https://fill-data.papermc.io/v1/objects/597cb54eef27b318dfb7daef924f9bbe2816e6b0547f0f861b15b42337b6ccd5/paper-26.2-62.jar
ARG PORT=25565
ENV Xms=512M
ENV Xmx=2G
WORKDIR /minecraft

RUN apk update && apk update && apk add --no-cache curl wget unzip openjdk${openjdk_v}-jdk

RUN wget -O server.jar ${minecraft_v} 

RUN echo "eula=true" > eula.txt

EXPOSE ${PORT}

CMD ["sh","-c","java -Xms${Xms} -Xmx${Xmx} -jar server.jar"]
