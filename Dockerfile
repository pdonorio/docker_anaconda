# Anaconda python
#http://docs.continuum.io/anaconda/install.html#linux-install

# Set the base image to Ubuntu
FROM ubuntu:14.04
# File Author / Maintainer
MAINTAINER Paolo D Onorio De Meo <p.donorio.demeo@gmail.com>

# Install packages
RUN apt-get update
RUN apt-get install -y expect
#build_essential
#build_essential + compilatore fortran (gfortran)?

# A separate space for opt, where i install anaconda
#VOLUME /opt
RUN mkdir -p /opt

# download the anaconda installer
ADD http://j.mp/anaconda_linuxpy27_64bit /opt/installer.sh
# or force it from this directory?
#ADD installer.sh /opt/

# Use the interactive script to execute installer automatically
ADD expect.sh /opt/
RUN cd /opt && ./expect.sh && rm -f *.sh

WORKDIR /opt

# Installer does not seem to save this inside the bash file
RUN echo "export PATH=$PATH:/opt/anaconda/bin" >> /root/.bashrc

# MINIMAL DA INSTALLARE
# numpy, scipy, ipython, notebook, matplotlib, cython, ftopy