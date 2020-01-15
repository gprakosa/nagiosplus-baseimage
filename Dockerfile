FROM phusion/baseimage:latest
LABEL description "Base image of NagiosPlus"

RUN apt-get update && \
  apt-get install -y --no-install-recommends --fix-missing \
    automake apache2 apache2-utils autoconf \
    bc build-essential bsd-mailx \
    dc \
    fping \
    gawk gettext gperf git \
    iputils-ping \
    libapache2-mod-php libgd2-xpm-dev libmcrypt-dev libssl-dev libcairo2-dev libffi-dev libapache2-mod-wsgi libmysql++-dev libmysqlclient-dev libnet-snmp-perl \
    m4 mysql-client \
    netcat \
    python-pip python-dev python3-dev parallel php7.0-xml postfix \
    runit \
    smbclient snmp snmpd snmp-mibs-downloader sudo \
    unzip && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* && \
  pip install --upgrade --no-cache-dir pip distribute virtualenv
