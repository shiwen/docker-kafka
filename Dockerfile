FROM shiwen/java

MAINTAINER shiwen

COPY kafka /usr/lib/kafka
COPY conf /etc/kafka
COPY kafka-run-class.sh /usr/bin/
COPY start-kafka.sh /usr/bin/

EXPOSE 9092

VOLUME ["/var/lib/kafka", "/var/log/kafka"]

CMD ["/usr/bin/start-kafka.sh"]
