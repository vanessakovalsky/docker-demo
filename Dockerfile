# base image: last debian release 
FROM ubuntu
# install the latest upgrades 
RUN apt-get update
# install nginx 
RUN apt-get -y install nginx pass
# set the default container command 
# −> run nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
# Tell the docker engine that there will be something listening on the tcp port 80 
EXPOSE 80
