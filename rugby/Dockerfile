FROM debian:jessie
MAINTAINER frug  <id2359@yahoo.com>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
  apt-transport-https \
  build-essential \
  libc6-i386 \
  lib32z1 \
  lib32ncurses5 \
  wget \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN env --unset=DEBIAN_FRONTEND
RUN mkdir /app

RUN mkdir /scratch
WORKDIR /scratch
RUN wget http://www.rebol.com/downloads/v278/rebol-core-278-4-3.tar.gz -O rebol.tgz && \
    tar xzvf rebol.tgz && \
    mv releases/rebol-core/rebol /app && \
    rm -rf /scratch

   
WORKDIR /app
COPY rugby4.r .
COPY functions.r .
COPY main.r .

EXPOSE 8001

CMD ["/app/rebol", "-qs", "/app/main.r"]

