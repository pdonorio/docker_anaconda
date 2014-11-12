# following http://www.centurylinklabs.com/optimizing-docker-images/?hvid=4wO7Yt

mitt="miniconda"
dest="cineca/scientificpy:1.0"
temp="ihavenoname"

# do this when you have NO RUNNING CONTAINER
echo "Launching container"
docker run --name $temp -d $mitt
echo "Flattening image"
docker export $temp | docker import - $dest
echo "Cleaning"
docker stop $temp
docker rm $temp

# Other sources:
# http://stackoverflow.com/a/24397597
# also... this perl script?
# http://3ofcoins.net/2013/09/22/flat-docker-images/