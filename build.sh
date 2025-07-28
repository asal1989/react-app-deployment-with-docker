#!/bin/bash

#login into DockerHub:
docker login -u asal1989 -p Asaldayaa@1989

#stopping existing container:
docker stop react
docker rm react

#building a image:
docker build -t react-ci/cd .

#running a container from the created image:
docker run -d -it --name react -p 80:80 react-ci/cd

#pushing the image to dockerhub:
docker tag react-ci/cd asal1989/react-app:ci-cd
docker push asal1989/react-app:ci-cd
