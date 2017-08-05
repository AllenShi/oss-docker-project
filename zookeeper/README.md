Zookeeper
=================
Using jplock's zookeeper

     https://github.com/jplock/docker-zookeeper
     

Run the zookeeper image

docker run -d -e SERVER_ID=1 -e ADDITIONAL_ZOOKEEPER_1=server.1=1.1.1.1:2888:3888 -e ADDITIONAL_ZOOKEEPER_2=server.2=1.1.1.1:2888:3888 -e ADDITIONAL_ZOOKEEPER_3=server.3=1.1.1.1:2888:3888 -p 2181:2181 -p 2888:2888 -p 3888:3888 allen.io/zookeeper:3.4.8


     
     
     
     


     
     
