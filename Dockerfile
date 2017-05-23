#Imagen Base
 FROM ubuntu:16.04

#Actualización e instalación 
#liblapack3
#fftw3
#librerias openmpi
#openmx

 RUN apt-get update && apt-get -y install \
 liblapack3 \
 fftw3 \
 libfftw3-bin \
 libfftw3-dev \
 libibnetdisc-dev \
 openmpi-bin \
 openmpi-doc \
 libopenmpi-dev \
 openmx
 RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

ADD Methane.dat /
ADD 60ZBNGraphene.dat /
