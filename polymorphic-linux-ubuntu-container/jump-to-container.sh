#!/bin/sh

cat << EOF > /tmp/noexit.sh
!/bin/sh
echo "Preparing Ubuntu container environment..."
apt-get update && apt-get install -y bash curl
clear
echo "Environment ready!"
echo "done" > /etc/polyverse-env-ready
while true ; do script -q -c "/bin/bash -l" /dev/null ; done
EOF

chmod a+x /tmp/noexit.sh

docker run --name demo --rm -it -v /tmp/noexit.sh:/noexit.sh ubuntu:xenial /bin/sh /noexit.sh