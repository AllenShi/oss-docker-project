#!/bin/sh

ZOO_CFG="/opt/zookeeper/conf/zoo.cfg"

# Output server ID
echo "zk data dir: ${ZK_DATA_DIR}"
echo "server id (myid): ${SERVER_ID}"
echo "${SERVER_ID}" > ${ZK_DATA_DIR}/myid

# Add additional ZooKeeper servers into the zoo.cfg file
echo "dataDir=${ZK_DATA_DIR}" >> ${ZOO_CFG}
echo "${ADDITIONAL_ZOOKEEPER_1}" >> ${ZOO_CFG}
echo "${ADDITIONAL_ZOOKEEPER_2}" >> ${ZOO_CFG}
echo "${ADDITIONAL_ZOOKEEPER_3}" >> ${ZOO_CFG}

# Start Zookeeper
/opt/zookeeper/bin/zkServer.sh start-foreground
