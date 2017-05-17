#!/bin/bash

#set cassandra cassandra.yaml
sed -i -e "s|^cluster_name:.*$|cluster_name:'DEV Cassandra Cluster'|" $CASSANDRA_HOME/conf/cassandra.yaml
sed -i -e "s|^listen_address:.*$|listen_address:`hostname -i`|" $CASSANDRA_HOME/conf/cassandra.yaml
