#Getting base image
gitpod/workspace-full:latest

# Install custom tools, runtime, etc.
USER gitpod
ARG DEBIAN_FRONTEND=noninteractive

RUN sudo apt-get update
RUN sudo apt-get install -y build-essential geany geany-plugins synaptic \
    meld libgtk-3-dev libcurl4-gnutls-dev libsdl2-dev libsdl2-mixer-dev \
    libicu-dev libgmp-dev libncurses5-dev xclip libwebsockets-dev wget
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN sudo apt  install -y python3 python3-pip
RUN sudo pip3 install pyparsing


