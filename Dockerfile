FROM ubuntu:18.04

RUN apt-get update && apt-get install -y firefox

RUN export uid=649431273 gid=27 && \
    mkdir -p /home/64943127304 && \
    echo "64943127304:x:${uid}:${gid}:Developer,,,:/home/64943127304:/bin/bash" >> /etc/passwd && \
    echo "64943127304:x:${uid}:" >> /etc/group && \
    echo "64943127304 ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/64943127304 && \
    chmod 0440 /etc/sudoers.d/64943127304 && \
    chown ${uid}:${gid} -R /home/64943127304

USER 64943127304
ENV HOME /home/64943127304
CMD /usr/bin/firefox
