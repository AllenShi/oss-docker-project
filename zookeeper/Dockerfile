# VERSION        0.1
# Inspired from SOURCE         https://github.com/jplock/docker-zookeeper

FROM debian:stretch

ARG SITE=http://apache.mirrors.pair.com
ARG VERSION=3.4.10
ARG ZK_DATA_DIR=/var/lib/zookeeper

LABEL name="zookeeper" version=$VERSION

RUN apt-get update && apt-get install -y openjdk-8-jre-headless wget
RUN wget -q -O - $SITE/zookeeper/zookeeper-$VERSION/zookeeper-$VERSION.tar.gz | tar -xzf - -C /opt \
    && mv /opt/zookeeper-$VERSION /opt/zookeeper \
    && cp /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg \
    && mkdir -p $ZK_DATA_DIR 

ENV ZK_DATA_DIR $ZK_DATA_DIR 
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

ADD ./run.sh /opt/run.sh
RUN chmod 777 /opt/run.sh

EXPOSE 2181 2888 3888

WORKDIR /opt/zookeeper

VOLUME ["/opt/zookeeper/conf", $ZK_DATA_DIR]

CMD ["/opt/run.sh"]
