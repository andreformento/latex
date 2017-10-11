FROM ubuntu:xenial
MAINTAINER André Formento <andreformento.sc@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
    texlive-publishers texlive-lang-portuguese texlive-latex-extra texlive-fonts-recommended \
    python-pygments gnuplot \
    make git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /data

VOLUME ["/data"]
