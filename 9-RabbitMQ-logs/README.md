# Day 9 Challenge - RabbitMQ Logging System Enhancement

## Overview
Day 9's challenge continues from Day 8, enhancing the distributed logging system using RabbitMQ. In this phase, we have to implement additional features such as improved log formatting and implement a log producer and consumer system using RabbitMQ.

 
## Output Screenshot 

1. RabbitMQ User1 Log Queues
![RabbitMQ-USER1-logs Output](https://github.com/prath-void/devops-sre-challenge/blob/master/9-RabbitMQ-logs/user1-logs.png?raw=true)

2. RabbitMQ User2 Log Queues
![RabbitMQ-user2-logs](https://github.com/prath-void/devops-sre-challenge/blob/master/9-RabbitMQ-logs/user2-logs.png?raw=true)

3. Logs processed by the consumer
   ![Logs-Aggregator Output](https://github.com/prath-void/devops-sre-challenge/blob/master/9-RabbitMQ-logs/log-aggregator.png?raw=true)

4. Aggregated Logs
![RabbitMQ-logs-txt-file Output](https://github.com/prath-void/devops-sre-challenge/blob/master/9-RabbitMQ-logs/agg-logs-txt.png?raw=true)

## Key Learnings
**Work Queue Implementation**: 
- Explored the concept of a Work Queue, which is used to distribute time-consuming tasks among multiple workers. This approach allows for better resource utilization and improved performance by enabling parallel processing of tasks. 
- By leveraging RabbitMQ's capabilities, tasks can be sent to a queue where multiple worker processes can consume and process them concurrently, leading to faster completion times for large workloads.
