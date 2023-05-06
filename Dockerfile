FROM ubuntu:22.04
#ENV DEVIAN_FRONTEND noninteractive

WORKDIR uno
COPY ./arduino-cli.init /uno

RUN apt update -y && apt upgrade -y \
    && apt install -y vim wget curl unzip sudo

RUN wget https://downloads.arduino.cc/arduino-cli/arduino-cli_latest_Linux_64bit.tar.gz \
    && tar -xvf arduino-cli_latest_Linux_64bit.tar.gz \
    && mv arduino-cli /usr/local/bin/ \



#VOLUME /tmp/.X11-unix
#ENV LANG C.UTF-8



