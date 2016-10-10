FROM      ubuntu:16.04
MAINTAINER jim@esims.org

LABEL Description="Ubuntu based python bottle/cork/beaker container" Version="0.5"
RUN apt-get -y update
# RUN apt-get -y upgrade
RUN apt-get -y install build-essential tar python-setuptools openssl python-dev libssl-dev ca-certificates python-pip
RUN easy_install bottle bottle-cork beaker pycryptopp
RUN mkdir /app
ADD app/app.py /app/app.py

EXPOSE 80
CMD    [ "/usr/bin/python", "/app/app.py" ]
