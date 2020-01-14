FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl git libffi-dev libssl-dev network-manager python3-pip wireless-tools vim wget

RUN git clone https://github.com/shaunstapley/eaphammer.git
WORKDIR /eaphammer
RUN git checkout python3

RUN apt-get clean
