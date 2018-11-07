#!/bin/sh

cat << EOF > /tmp/noexit.sh
!/bin/sh
echo "Preparing CentOS container environment..."
yum update -y && yum install -y bash curl
clear
echo "Environment ready!"
touch /etc/polyverse-env-ready
while true ; do script -q -c "/bin/bash -l" /dev/null ; done
EOF

chmod a+x /tmp/noexit.sh

docker run --name demo --rm -it -v /tmp/noexit.sh:/noexit.sh centos:7 /bin/sh /noexit.sh