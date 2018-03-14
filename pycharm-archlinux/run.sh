#!/bin/bash

# https://superuser.com/questions/806637/xauth-not-creating-xauthority-file
# http://wiki.ros.org/docker/Tutorials/GUI

XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
xauth nlist :0 | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -

# in case of xauth problems try stop docker (systemctl stop), remove
# /tmp/.docker... files and dirs


docker run -ti \
    --name pycharm_archlinux_2x \
    -v $XSOCK:$XSOCK \
    -v $XAUTH:$XAUTH \
    -v /mnt/veracrypt1/ebadu_pro:/home/user/ebadu_pro \
    -e XAUTHORITY=$XAUTH \
	pycharm_archlinux
