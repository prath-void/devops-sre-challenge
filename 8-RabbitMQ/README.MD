# Day 8 Challenge - RabbitMQ Setup and Configuration

## Overview
'''
- This document outlines the installation and configuration of RabbitMQ as part of the Day 8 challenge of DevOps/SRE Challenge by Sagar Utekar.
- It includes insights into what RabbitMQ is, why message queues are important, the installation process, errors encountered, and key learnings.
'''

## What is RabbitMQ?
'''
- RabbitMQ is an open-source message broker that facilitates communication between different components of distributed systems through messaging. It allows applications to send messages to one another asynchronously, enabling decoupled architecture and improved scalability.
'''

## Why Use Message Queues?
Message queues are essential for:
- **Decoupling**: They separate the producers (senders) from consumers (receivers), allowing them to operate independently.
- **Asynchronous Processing**: They enable applications to process messages at their own pace without blocking.
- **Load Balancing**: They distribute workloads evenly among consumers, improving resource utilization.
- **Reliability**: They ensure that messages are delivered even if the receiving application is temporarily unavailable.  
 
## Output Screenshot 
1.
![ex1.1 Output](?raw=true)
