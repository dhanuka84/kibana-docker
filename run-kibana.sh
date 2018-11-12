#!/bin/sh
docker run -p 5601:5601 \
        --name kibana \
        --rm \
        --ulimit nofile=65536:65536 --ulimit memlock=-1:-1 \
        -e "ES_JAVA_OPTS=-Xms512m -Xmx512m" -e bootstrap.memory_lock=true  \
	-v  /home/dhanuka/projects/docker/kibana-docker/kibana.yml:/usr/share/kibana/config/kibana.yml \
        docker.elastic.co/kibana/kibana:6.3.2
