# Zookeeper Stack - Docker 

Update file `kafka/config/server.properties` for kafka/zookeeper servers:

kafka server: `listeners = PLAINTEXT://test-kafka:9092`

zookeeper server: `zookeeper.connect=10.241.0.117:2181`

Deploy Stack:

sudo docker stack deploy -c docker-compose.yml zookeeper-stack
