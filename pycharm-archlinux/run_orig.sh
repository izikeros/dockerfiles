docker run \
        -d \
        -e DISPLAY \
        -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
        pycharm_archlinux
    --name pycharm_archlinux_dx \
    #-v $HOME/docker-data/pycharm/config:/home/user/.PyCharm40/ \
    #-v $HOME/docker-data/pycharm/PycharmProjects:/home/user/PycharmProjects/ \
