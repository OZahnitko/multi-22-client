#!/bin/bash
docker pull ozahnitko/multi-22-client:latest
docker container stop client_app
docker container rm client_app
docker run -d -p 80:80 --name client_app ozahnitko/multi-22-client:latest