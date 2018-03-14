# based on docker-archlinux-pycharm-professional from dockerhub
FROM archlinux-with-yaourt


# install pycharm
RUN sudo pacman --noconfirm -S python2 python2-pip
RUN sudo pacman --noconfirm -S python3 python-pip
RUN sudo pacman --noconfirm -S git
RUN sudo pacman --noconfirm -S libxrender freetype2 libxext libxtst
RUN yaourt -S --noconfirm pycharm-professional
RUN sudo pacman --noconfirm -Sy xorg-xeyes

ENV DISPLAY :0
# running
ENTRYPOINT ["/usr/bin/pycharm"]
#ENTRYPOINT ["/usr/bin/bash"]

