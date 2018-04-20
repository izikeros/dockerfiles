# based on docker-archlinux-pycharm-professional from dockerhub
FROM archlinux-with-yaourt


# install pycharm
RUN sudo pacman --noconfirm -Sy python2 python2-pip python3 python-pip
RUN sudo pacman --noconfirm -Sy git
RUN sudo pacman --noconfirm -Sy libxrender freetype2 libxext libxtst
RUN yaourt -Sy --noconfirm pycharm-professional

# For convenience
RUN sudo pacman --noconfirm -Sy xorg-xeyes xorg-xinit xorg-xhost zsh mc vim
RUN sudo pacman --noconfirm -Sy firefox
RUN sudo pacman --noconfirm -Sy grml-zsh-config

# For this project
RUN sudo pacman --noconfirm -Sy geoip cairo pango

RUN sudo chsh -s /bin/zsh user

ENV DISPLAY :0

# running
#ENTRYPOINT ["/usr/bin/pycharm"]
ENTRYPOINT ["/usr/bin/zsh"]

