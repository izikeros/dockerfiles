#!/bin/bash

# https://superuser.com/questions/806637/xauth-not-creating-xauthority-file
# http://wiki.ros.org/docker/Tutorials/GUI

XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
xauth nlist :0 | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -

# in case of xauth problems try stop docker (systemctl stop), remove
# /tmp/.docker... files and dirs


docker run -ti \
    --name xeyes \
    -v $XSOCK:$XSOCK \
    -v $XAUTH:$XAUTH \
    -e XAUTHORITY=$XAUTH \
	xeyes_img
