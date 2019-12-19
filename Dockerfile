FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl git python3-pip network-manager wireless-tools vim wget

RUN git clone https://github.com/shaunstapley/eaphammer.git
WORKDIR /eaphammer
RUN git checkout python3

RUN apt-get clean
