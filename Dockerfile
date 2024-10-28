FROM ubuntu:latest

RUN apt-get update && apt-get install -y build-essential gdb strace && apt-get clean

ADD . /opt/rom

RUN cd /opt/rom/src && make -k
RUN mkdir -p /opt/rom/log
RUN mkdir -p /opt/rom/player
RUN mkdir -p /opt/rom/gods
RUN mkdir -p /opt/rom/area

WORKDIR /opt/rom/bin

VOLUME [ "/opt/rom" ]
EXPOSE 4000

ENTRYPOINT [ "./startup" ]
