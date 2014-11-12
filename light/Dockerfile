# Lightweight scientific python image
#http://docs.continuum.io/anaconda/install.html#linux-install

# Set the base image to Ubuntu
FROM ubuntu:14.04
# File Author / Maintainer
MAINTAINER Paolo D Onorio De Meo <p.donorio.demeo@gmail.com>

# Install packages
RUN apt-get update && apt-get install -y expect build_essential gfortran

# Install anaconda light
RUN mkdir -p /opt
WORKDIR /opt
ADD Miniconda*sh /opt/miniconda.sh
ADD expect.sh /opt/
RUN cd /opt && ./expect.sh && rm -f *.sh

# Install minimal packages
conda create -n scientific ipython-notebook numpy scipy matplotlib cython f2py

# notebook port
EXPOSE 8888