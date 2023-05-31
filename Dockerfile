# FROM command => set the base image of our new image
# this is the first layer of the container
FROM ubuntu:16.04


# RUN command => set a line that run something in our base image
# NOTE: you can concatenate commands with \ or &&
RUN apt-get update \
    && apt-get install -y vim


# ADD command => to add files from our current directory
# to the filesystem folder inside the container
ADD files/helloWorld.txt /usr/local/


# WORKDIR command => work dir command to set the dir
# where the commands will be runned
WORKDIR /usr/local/files


# ENV command => to add environment variables
# useful for temporal usage, staticas, etc
# single
ENV variable1 valor1 
# multiple
ENV variable2="valor2" variable3="valor3"


# COPY command => copy files from folder to container folder
COPY ./files/helloWorld.txt ./helloWorld.txt


# EXPOSE command => expose specific ports for network comm
EXPOSE 80


# CMD command => default command in the startup
CMD ["/bin/bash"]

# # ENTRYPOINT command => entry point
# ENTRYPOINT [ "executable" ]