# Anaconda python
#http://docs.continuum.io/anaconda/install.html#linux-install

# Set the base image to Ubuntu
FROM ubuntu:14.04
# File Author / Maintainer
MAINTAINER Paolo D Onorio De Meo <p.donorio.demeo@gmail.com>

# Install packages
RUN apt-get update
RUN apt-get install -y expect

#build_essential + compilatore fortran (gfortran)?

VOLUME /opt

# download in silent mode
#ADD http://j.mp/anaconda_linuxpy27 /opt/installer.sh
ADD installer.sh /opt/

WORKDIR /opt
ADD expect.sh /opt/

# install?
# DA INSTALLARE
# numpy, scipy, ipython, notebook, matplotlib, cython, ftopy