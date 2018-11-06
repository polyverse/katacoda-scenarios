#!/usr/sh

cat << EOF > /tmp/noexit.sh
!/bin/sh
echo "Preparing Ubuntu container environment..."
apt-get update >&/dev/null && apt-get install -y bash curl >&/dev/null
echo "Environment ready!"
while true ; do script -q -c "/bin/bash -l" /dev/null ; done
EOF

chmod a+x /tmp/noexit.sh

docker run --rm -it -v /tmp/noexit.sh:/noexit.sh ubuntu:xenial /bin/sh /noexit.sh