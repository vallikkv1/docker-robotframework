# docker-robotframework

**Docker build**

 - To build docker image from the dockerfile.
 > docker build .  -t \<Name in which docker image to be created\> 

**Docker Commands**

- To list docker images
   > docker images
- To list all docker containers
   > docker ps -a
- To list running docker containers
   > docker ps
- To create a docker container from image
   > docker run -td --name \<container name\> \<Docker image name\>
   
   > Example: docker run -td --name testcontainer debian
- To create a docker container from image and enabling some port forwarding
   > docker run -td --name \<container name\> -p \<Host Port\>:\<Container Port\> \<Docker image name\>
   
   > Example: docker run -td --name testcontainer -p  6010:22 debian
- To start docker container
   > docker start \<Container name\>
- To stop docker container
   > docker stop \<Container name\>
- To get into running container (Eg: Bash)
   > docker exec -it \<Container name\> bash
- To remove container
   > docker rm \<Container name\>
- To remove image
   > docker rmi \<Container name\>
- To inspect docker (IP, Harddisk etc)
   > docker inspect \<Container name\>
