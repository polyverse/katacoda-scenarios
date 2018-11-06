#!/usr/sh

cat << EOF > /tmp/noexit.sh
!/bin/sh
apt-get update && apt-get install -y bash
clear
while true ; do script -q -c "/bin/bash -l" /dev/null ; done
EOF

chmod a+x /tmp/noexit.sh

docker run --rm -it -v /tmp/noexit.sh:/noexit.sh ubuntu /bin/sh /noexit.sh