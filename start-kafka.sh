#!/bin/bash

function set_variables {
    if [ -n "$BROKER_ID" ]; then
        sed -i -e "s/^brokerid=.*$/brokerid=${BROKER_ID}/g" /etc/kafka/server.properties
    fi
    if [ -n "$ZOOKEEPER" ]; then
        sed -i -e "s/^zk.connect=.*$/zk.connect=${ZOOKEEPER//\//\\\/}/g" /etc/kafka/server.properties
    fi
}

LOG_OPTS="-Dlog4j.configuration=file:/etc/kafka/log4j.properties -Xloggc:/var/log/kafka/gc.log -XX:ErrorFile=/var/log/kafka/java-error.log"

set_variables
kafka-run-class.sh ${LOG_OPTS} kafka.Kafka /etc/kafka/server.properties
