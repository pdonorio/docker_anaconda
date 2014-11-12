# Powerfull and complete scientific python image
# Created with the minimum list of packages for our python courses

#Sources:
#http://docs.continuum.io/anaconda/install.html#linux-install
#http://conda.pydata.org/index.html
#http://conda.pydata.org/miniconda.html

FROM ubuntu:14.04
MAINTAINER Paolo D Onorio De Meo <p.donorio.demeo@gmail.com>
# Install ubuntu packages (compilers and other tools)
RUN apt-get update && apt-get install -y expect build-essential gfortran && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install anaconda light
RUN mkdir -p /opt
WORKDIR /opt
ADD Miniconda*sh /opt/installer.sh
ADD expect.sh /opt/
# execute and clean
RUN cd /opt && ./expect.sh && rm -f *.sh

# Add to path
ENV PATH $PATH:/opt/miniconda/bin

# Install minimal packages - reply with yes to install
# also Remove tmp packages
# https://groups.google.com/a/continuum.io/forum/#!topic/anaconda/5oz1RSzDCgg
RUN yes | conda create -n scientific ipython-notebook numpy scipy matplotlib cython && rm -rf /opt/miniconda/pkgs

# Set up scripts for your needs
RUN echo "ipython notebook --ip=0.0.0.0 --port=8888 --pylab=inline --no-browser" > /opt/start_notebook.sh

# notebook port
EXPOSE 8888
