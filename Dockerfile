FROM circleci/node:10.3.0

RUN echo 'deb http://ftp.de.debian.org/debian testing main' | sudo tee -a /etc/apt/sources.list
RUN sudo apt-get -y update
RUN sudo apt-get -y -t testing install python3.6 python3.6-pip  python3-dev


CMD ['bash']
# RUN sudo pip3 install -U setuptools pip
# RUN sudo pip3 install awscli ansible
#
# USER circleci
# WORKDIR /home/circleci
