FROM debian:buster-slim

MAINTAINER Petr Balat <petr.balat@gmail.com>

RUN apt update \
&& apt install -y apt-transport-https dirmngr gnupg ca-certificates \ 
&& apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \ 
&& echo "deb https://download.mono-project.com/repo/debian stable-buster main" | tee /etc/apt/sources.list.d/mono-official-stable.list \ 
&& apt update \ 
&& apt install --no-install-recommends -y mono-xsp4  \
&& apt autoremove -y && apt clean && apt purge -y --auto-remove \
&& rm -rf /var/lib/{apt,dpkg,cache,log}/ /var/log/ /var/cache/ /usr/lib/mono/aot-cache/ /tmp/*
