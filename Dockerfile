#Getting base image
FROM gitpod/workspace-full:latest

# Install custom tools, runtime, etc.
USER root
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y build-essential geany geany-plugins synaptic \
    meld libgtk-3-dev libcurl4-gnutls-dev libsdl2-dev libsdl2-mixer-dev \
    libicu-dev libgmp-dev libncurses5-dev xclip libwebsockets-dev wget
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN apt  install -y python3 python3-pip
RUN pip3 install pyparsing


