#!/bin/bash

# https://superuser.com/questions/806637/xauth-not-creating-xauthority-file
# http://wiki.ros.org/docker/Tutorials/GUI


docker run -ti \
    --name pycharm_archlinux_dx \
    -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
    -v /mnt/veracrypt1/ebadu_pro:/home/user/ebadu_pro \
    -e DISPLAY=0.0 \
    pycharm_archlinux

