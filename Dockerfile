FROM ubuntu:22.04
MAINTAINER Jaeger <JaegerCode@gmail.com>

ADD install.sh /root/
ADD start.sh /

USER root

RUN apt-get -y install initscripts && sh /root/install.sh 2>&1 | tee /root/install.log

RUN apt-get clean all

EXPOSE 80 8888 888 443 20 21

RUN chmod +x /start.sh 

CMD /start.sh


