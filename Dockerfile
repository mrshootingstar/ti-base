FROM ubuntu:16.04
RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_4.x | bash  && \
    apt-get install -y nodejs && \
    apt-get install -y mysql-client && \
    apt-get install -y git && \
    npm install -g bower && \
    npm install -g grunt-cli  && \
    npm install -g coffeescript  && \
    npm install -g n && \
    n v0.12.18 && \
    apt-get -qq update && \
    apt-get -qq -y install bzip2
    
RUN apt-get install python-pip -y && \
    pip install awscli  && \
    export PATH=/usr/local/lib/python2.7/dist-packages:$PATH

RUN apt-get purge python-pip -y && \
    apt-get autoremove -y && \
    apt-get autoclean -y