FROM mono:6.12.0.107-slim

MAINTAINER Petr Balat <petr.balat@gmail.com>

RUN apt-get update
RUN apt-get install -y mono-xsp
RUN apt-get autoremove -y && apt-get clean && apt-get purge -y --auto-remove
RUN rm -rf /var/lib/apt/lists/* /tmp/*
