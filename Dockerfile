FROM spotify/debify:latest

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv-keys 9E3E53F19C7DE460
RUN apt-get update
RUN apt-get install -y xz-utils
