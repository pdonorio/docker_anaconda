#!/bin/bash

check=`docker images | grep anaconda`
if [ "$check" == "" ]; then

    echo "Build"
    #docker build -t anaconda .

    if [ $? -ne 0 ]; then
        echo "Failed to build..."
        exit 1;
    fi
else
    echo "Image already builded"
fi

echo "Running the container and open a bash shell:"
docker run -it --name conda -p 8888:8888 anaconda bash
if [ $? -eq 0 ]; then
    out=`docker stop conda && docker rm conda`
    echo "Removed container"
fi