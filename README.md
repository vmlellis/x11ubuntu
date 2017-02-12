## About
Base Docker image for running X11 Applications


## Usage

```sh
docker run -it \
           -v /tmp/.X11-unix \
           -e UID=$(id -u) \
           -e GID=$(id -g) \
           -e DISPLAY=$DISPLAY \
           -v $XAUTHORITY:/home/ubuntu/.Xauthority \
           -v $HOME/.mozilla:/home/ubuntu/.mozilla \
           --net=host \
           --privileged \
           {COMMAND}
```
