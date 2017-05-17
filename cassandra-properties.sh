#!/bin/bash

#set cassandra cassandra.yaml
sed -i -e "s|^cluster_name:.*$|cluster_name:'$CS_CLUSTER_NAME'|" $CASSANDRA_HOME/conf/cassandra.yaml
sed -i -e "s|^listen_address:.*$|listen_address:$CS_LISTEN_ADDRESS|" $CASSANDRA_HOME/conf/cassandra.yaml
