FROM openjdk
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    software-properties-common \
    wget \
    sudo \
    git \
    python-pip \
	mc \
	zsh \
    libffi-dev \
    xauth \
    x11-apps

# Get username as input parameter from build command
#ARG user

# Assign value to environmental variable $USER
#ENV USER $user

# Arrangements for user
#RUN mkdir -p /home/izix/code_wrap && \
#    echo "izix:x:1000:1000:izix,,,:/home/izix:/bin/zsh" >> /etc/passwd &&\
#    echo "izix:x:1000:" >> /etc/group && \
#    echo "izix ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/izix && \
#    chmod 0440 /etc/sudoers.d/izix

#ENV HOME /home/izix
#WORKDIR /home/izix

#COPY ./pycharm-2017.3.3 /root/pycharm-2017.3.3

#RUN chown izix:izix -R /home/izix

#RUN sudo -u izix wet -qO- https://download.jetbrains.com/python/pycharm-professional-2017.3.3.tar.gz | tar xvz -C /home/izix

ENV DISPLAY :0
#ENTRYPOINT /root/pycharm-2017.3.3/bin/pycharm.sh
CMD /bin/bash
