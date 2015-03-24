 FROM ubuntu:utopic
MAINTAINER Pawel J <o@weljakubowski.com>

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN echo 'debconf/frontend select Noninteractive' | debconf-set-selections

#install base packages
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y curl wget ca-certificates build-essential autoconf python-software-properties libyaml-dev 

RUN  apt-get install -y libssl-dev libreadline6 libreadline6-dev zlib1g zlib1g-dev bison openssl make git libpq-dev libsqlite3-dev nodejs
RUN apt-get clean

RUN echo %sudo ALL=NOPASSWD:ALL >> /etc/sudoers


RUN wget -O ruby-install-0.5.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.5.0.tar.gz && tar  -xzvf ruby-install-0.5.0.tar.gz && cd ruby-install-0.5.0/ && make install

RUN wget -O chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz && tar -xzvf chruby-0.3.9.tar.gz && cd chruby-0.3.9/ && make install

RUN rm -rf /var/cache/apt/* /tmp/*

#setting up a ssh key to clone private repo from github
RUN mkdir -p /root/.ssh
ADD url_for_rsa /root/.ssh/id_rsa
RUN chmod 700 /root/.ssh/id_rsa
RUN echo "Host github.com\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config


RUN useradd -m -G sudo app

USER app 
WORKDIR /home/app

#install ruby version
RUN ruby-install ruby
RUN rm -rf /home/app/src

ADD docker-entrypoint.sh /home/app/docker-entrypoint.sh
ADD setup.sh /home/app/setup.sh

ENV RAILS_ENV=production

EXPOSE 3000:3000
ENTRYPOINT /home/app/docker-entrypoint.sh
