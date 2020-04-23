# Start from scratch with `bionic`
FROM ubuntu:18.04
RUN apt-get update --yes && \
  apt-get install sudo git --yes && \
  useradd -m admin && \
  echo "admin:admin" | chpasswd && \
  adduser admin sudo
COPY . /home/admin
USER admin