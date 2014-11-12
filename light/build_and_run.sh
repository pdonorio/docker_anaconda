#!/bin/bash

name='miniconda'
container='mconda'
port=8888

check=`docker images | grep $name`
if [ "$check" == "" ]; then

    echo "Build"
    docker build -t $name .

    if [ $? -ne 0 ]; then
        echo "Failed to build..."
        exit 1;
    fi
else
    echo "Image already builded"
fi

echo "Running the container and open a bash shell:"
docker run -it --name $container -p $port:$port $name bash
out=`docker stop $container && docker rm $container`
echo "Removed container"