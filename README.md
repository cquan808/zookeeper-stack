# Zookeeper Stack - Docker 

Update the file `kafka/config/server.properties` and make changes to the kafka/zookeeper servers as follows:

`listeners = PLAINTEXT://<kafka-server-ip>:9092`

`zookeeper.connect=<zookeeper-server-ip>:2181`

## Deploy Stack:

`sudo docker stack deploy --with-registry-auth -c docker-compose.yml zookeeper-stack`

# Kafka

Set Environment:

`export KAFKA_OPTS="-Djava.security.auth.login.config=/home/kafka/kafka/config/kafka_server_jaas.conf"`

Go to kafka Directory, then start Kafka:

`bin/kafka-server-start.sh config/server.properties`
