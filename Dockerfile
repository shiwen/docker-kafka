FROM shiwen/java

MAINTAINER shiwen

ADD kafka /opt/kafka
ADD conf /etc/kafka
ADD kafka-run-class.sh /usr/bin/kafka-run-class.sh
ADD start-kafka.sh /usr/bin/start-kafka.sh

EXPOSE 9092

VOLUME ["/var/lib/kafka", "/var/log/kafka"]

CMD start-kafka.sh
