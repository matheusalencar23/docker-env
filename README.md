# DockerEnv

This project was designed to study the use od docker containers to serve Angular applications on an nginx server.
Here we have multiple Angular applications running in parallel whithin a container with nginx, with each application responding on a different port.

Run `docker build -t matheusalencar/server:1.0 .` to build docker image

Run `docker run -d -p 8080:8080 -p 8081:8081 -p 8082:8082 matheusalencar/server:1.0` to server applications
