FROM debian:jessie

MAINTAINER Mat Schaffer <mat@stellar.org>

ADD install /

RUN /install
