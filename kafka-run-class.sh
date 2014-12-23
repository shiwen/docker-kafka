#!/bin/bash

JVM_OPTS="-server -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -XX:+PrintGCDateStamps -XX:+PrintTenuringDistribution -XX:+PrintHeapAtGC"

java ${JVM_OPTS} -cp /opt/kafka/kafka.jar:/opt/kafka/libs/*.jar $@
