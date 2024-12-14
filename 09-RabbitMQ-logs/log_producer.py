import pika
import sys


# RabbitMQ credentials and host
rabbitmq_host = 'ec2-35-154-32-203.ap-south-1.compute.amazonaws.com'  # Replace with your RabbitMQ server IP or hostname
rabbitmq_user = 'rabbitmquser0'  # Replace with your RabbitMQ username
rabbitmq_password = 'user@012'  # Replace with your RabbitMQ password

# Set up credentials
credentials = pika.PlainCredentials(username=rabbitmq_user, password=rabbitmq_password)


connection = pika.BlockingConnection(pika.ConnectionParameters(host=rabbitmq_host, credentials=credentials))
channel = connection.channel()

# Declare a queue
channel.queue_declare(queue='logs_queue', durable=True)

# Send log messages
message = ' '.join(sys.argv[1:]) or "Default log message"
channel.basic_publish(
    exchange='',
    routing_key='logs_queue',
    body=message,
    properties=pika.BasicProperties(
        delivery_mode=pika.spec.PERSISTENT_DELIVERY_MODE  # Make the message persistent
    )
)
print(f" [x] Sent '{message}'")

connection.close()
