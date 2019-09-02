# firefox-in-docker-playground
Firefox in docker playground

# reference
http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/

sudo docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix firefox

sudo docker run -e DISPLAY -v $HOME/.Xauthority:/home/64943127304/.Xauthority --net=host firefox xhost local:root
