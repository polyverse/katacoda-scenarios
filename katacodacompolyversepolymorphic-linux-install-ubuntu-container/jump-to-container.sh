#!/usr/sh

echo <<EOF > /tmp/noexit.sh
# !/bin/sh
# apt-get update && apt-get install -y bash
# while true ; do script -q -c "/bin/bash -l" /dev/null ; done
EOF

chmod a+x /tmp/noxit.sh

docker run --rm -it -v /tmp/noexit.sh:/noexit.sh ubuntu /noexit.sh