FROM debian:latest
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y mandelbulber2 rsync
ENV HOME /root
WORKDIR /root
CMD ["mandelbulber2"]

