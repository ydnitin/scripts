#!/bin/bash

SPACE=`df -h | grep "/opt/elasticsearch/data" | awk '{ print $4 }' | awk -F "%" '{print $1}'`
INDEX=`ls -lt  /opt/elasticsearch/data/elasticsearch/nodes/0/indices/ | grep logstash | tail -1 | awk '{print $9}'`

if [[ $SPACE -ge 90 ]]; then
    echo -e "Diskspace usuage is above 90% on /opt/elasticsearch/data\n"
    echo -e "Dropping like it's hot ===>  $INDEX \n"
    curl -XDELETE "http://localhost:9200/$INDEX";
    echo -e "\n"
fi
