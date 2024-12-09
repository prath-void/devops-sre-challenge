# Day 11 Challenge - Docker & Custom Image

## Overview

- This challenge is about installation and configuration of Docker Image as part of the Day 11 challenge of DevOps/SRE Challenge by Sagar Utekar.
- It includes Building a customized Image and Dockerfile, the installation process, errors encountered, and key learnings.

## What is Docker?

**Docker is an open platform that helps developers and DevOps teams build, ship, and run applications in isolated environments called containers. It simplifies software development, deployment, and scalability by packaging applications with all dependencies needed to run consistently across various environments.

## Why Do We Need Docker?
- **Consistency:** It eliminates the "works on my machine" problem by ensuring the application behaves the same everywhere.
- **Portability:** Containers can run anywhere—on laptops, servers, cloud, or Kubernetes clusters.
- **Efficiency:** Lightweight compared to virtual machines, as containers share the host OS kernel.
- **Scalability:** Easily scale containerized apps to handle increased demand.

## Core Docker Concepts
- **Docker Images:** A lightweight, standalone, and executable software package that includes everything needed to run a piece of software.
- **Docker Containers:** Instances of Docker images that run as isolated processes on a host machine.
- **Dockerfile:** A text file containing instructions to build a Docker image.

## Output Screenshot 

1. Running Docker Containers
![docker-ps Output](https://github.com/prath-void/devops-sre-challenge/blob/master/11-Docker/docker-ps.png?raw=true)

2. Custom Docker Image
![custom-docker-image Output](https://github.com/prath-void/devops-sre-challenge/blob/master/11-Docker/custom-docker-nginx.png?raw=true)

3. Docker logs Snapshot
![docker-logs Output](https://github.com/prath-void/devops-sre-challenge/blob/master/11-Docker/docker-logs-nginx.png?raw=true)

## Key Learnings
- **Understanding Docker**: Docker is a platform that enables developers to automate the deployment of applications inside lightweight, portable containers. Containers package an application and its dependencies together, ensuring consistency across different environments.
- **Dockerfile**: A Dockerfile is a text file containing a series of instructions on how to build a Docker image. It defines the base image, application code, dependencies, and configurations needed to run the application.
- **Building an Image**: Use the `docker build` command to create an image from a Dockerfile. The command typically looks like this:
  ```bash
  docker build -t my-custom-image:latest .

## Errors Encountered
- **Build Context Errors**: 
```bash
  docker build -t my-custom-image:latest .
'''
 - Missed the dot (.) at the end specifies that the current directory is the build context.
