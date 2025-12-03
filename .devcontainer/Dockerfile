FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

ENV LANG C.UTF-8

RUN apt-get update
RUN apt-get -y install wget

RUN wget https://github.com/jgm/pandoc/releases/download/3.8.3/pandoc-3.8.3-1-amd64.deb && apt-get -y install ./pandoc-3.8.3-1-amd64.deb && rm pandoc-3.8.3-1-amd64.deb
