docker_anaconda
===============

A python scientific oriented container

Worked out reading:
http://docs.continuum.io/anaconda/install.html#linux-install

Two versions available:

* **full_anaconda**: all anaconda packages installed
* **light_anaconda**: only few selected packages already installed

Note: the light version is also available in the official docker hub.
https://hub.docker.com/u/cineca
The image has been **flattened** to limit the overall size,
following this guide:
http://www.centurylinklabs.com/optimizing-docker-images/?hvid=4wO7Yt
Starting from a 1.8 image, the result is less than 1GB
(see light/flat.sh script)

## Use the container

From your favourite shell do:

```sh
# clone this repository
$ git clone https://github.com/pdonorio/docker_anaconda.git

# go for the light version
$ cd docker_anaconda/light

# build the image if not exists and launch
# this will open a bash shell inside the container
$ ./build_and_run.sh

# from the container, load environment
$ source activate scientific
```

Now you are able to use python/ipython from the command line

## Launch a notebook

After following all the previous commands do (from /opt dir):

```
$ bash start_notebook.sh
```

Then, from your local browser you can access the notebook,
at the following address:

if you are using linux:
http://127.0.0.1:8888

if you are using boot2docker (windows/mac):
http://192.168.59.103:8888