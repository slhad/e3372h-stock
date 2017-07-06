FROM ioft/i386-ubuntu:16.04

RUN apt-get update && apt-get -y install udev p7zip sysv-rc-conf

WORKDIR /root

ADD bootstrap.sh /
RUN chmod +x /bootstrap.sh


ADD HiLink /HiLink

CMD ["/bootstrap.sh"]
