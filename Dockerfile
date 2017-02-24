#Imagen Base
 FROM ubuntu:16.04

#Actualización e instalación 
#liblapack3
#fftw3
#librerias openmpi
# openmx

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
 
