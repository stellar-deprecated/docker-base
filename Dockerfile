FROM debian:jessie

MAINTAINER Mat Schaffer <mat@stellar.org>

ENV CONFD_VERSION 0.9.0

ADD install /

RUN /install
