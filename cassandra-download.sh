#!/bin/bash

echo "Downloading and unzipping apache-cassandra-$CASSANDRA_VERSION"
curl --stderr /dev/null https://www.apache.org/dyn/closer.cgi\?as_json\=1 
curl www.google.com
mirror=$(curl --stderr /dev/null https://www.apache.org/dyn/closer.cgi\?as_json\=1 | jq -r '.preferred')
echo $mirror
url="$mirror/cassandra/$CASSANDRA_VERSION/apache-cassandra-${CASSANDRA_VERSION}-bin.tar.gz"
echo $url
curl $url | tar xz -C /opt 
