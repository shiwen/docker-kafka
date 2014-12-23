#!/bin/bash

JVM_OPTS="-server -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -XX:+PrintGCDateStamps -XX:+PrintTenuringDistribution -XX:+PrintHeapAtGC"

java ${JVM_OPTS} -cp /usr/lib/kafka/kafka.jar:/usr/lib/kafka/lib/*.jar $@
