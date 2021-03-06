# Start from scratch with `bionic`
FROM ubuntu:18.04
RUN apt-get update --yes && \
  apt-get install apt-transport-https dirmngr gnupg ca-certificates gnupg ca-certificates sudo git --yes && \
  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
  echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | tee /etc/apt/sources.list.d/mono-official-stable.list && \
  apt update --yes && \
  apt install mono-devel --yes && \
  useradd -m admin && \
  adduser admin sudo && \
  echo "admin:admin" | chpasswd
COPY . /home/admin
USER admin
