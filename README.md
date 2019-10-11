# Zookeeper Stack - Docker 

Update the file `kafka/config/server.properties` and make changes to the kafka/zookeeper servers as follows:

`listeners = PLAINTEXT://<kafka-server-ip>:9092`

`zookeeper.connect=<zookeeper-server-ip>:2181`

## Deploy Stack:

sudo docker stack deploy -c docker-compose.yml zookeeper-stack
