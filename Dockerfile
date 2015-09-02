FROM      ubuntu:14.10
MAINTAINER jim@esims.org

LABEL Description="Ubuntu based python bottle/cork/beaker container" Version="0.5"
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install build-essential
RUN apt-get install -y tar python-setuptools openssl python-dev libssl-dev
RUN easy_install bottle bottle-cork beaker pycryptopp


EXPOSE 80
CMD    [ "/usr/bin/python", "/app/app.py" ]
