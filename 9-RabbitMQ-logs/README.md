# Day 9 Challenge - RabbitMQ Logging System Enhancement

## Overview
Today's challenge continues from Day 8, enhancing the distributed logging system using RabbitMQ. In this phase, we will implement additional features such as improved log formatting and error handling in both the log producer and consumer scripts.

 
## Output Screenshot 

1. RabbitMQ User Interface through server
![RabbitMQ-UI Output](https://github.com/prath-void/devops-sre-challenge/blob/master/8-RabbitMQ/Screenshot%20from%202024-12-05%2000-33-14.png?raw=true)

2. Adding New User to RabbitMQ
![RabbitMQ-user Output](https://github.com/prath-void/devops-sre-challenge/blob/master/8-RabbitMQ/Screenshot%20from%202024-12-05%2000-36-11.png?raw=true)

3. Adding Queues
![RabbitMQ-queue Output](https://github.com/prath-void/devops-sre-challenge/blob/master/8-RabbitMQ/Screenshot%20from%202024-12-05%2000-43-40.png?raw=true)

4. Queue Lists
![RabbitMQ-queue Output](https://github.com/prath-void/devops-sre-challenge/blob/master/8-RabbitMQ/Screenshot%20from%202024-12-05%2000-45-55.png?raw=true)

## Key Learnings
- **Understanding RabbitMQ**: Gained insights into how RabbitMQ functions as a message broker.
- **Importance of Message Queues**: Learned why message queues are crucial for modern application architectures.
- **Installation Process**: Acquired skills in installing and configuring RabbitMQ on an EC2 instance.
- **User Management**: Created users and set permissions for secure access to the management interface.

## Errors Encountered
**Access Restrictions**: The default `guest` user could only log in from `localhost`, which required creating a new user with appropriate permissions for remote access.

