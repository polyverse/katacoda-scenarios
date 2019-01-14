#!/bin/sh

echo "Installing docker if it doesn't exist..."
yum install -y docker
service docker start

cat << EOF > /tmp/noexit.sh
!/bin/sh
echo "Preparing RHEL 7.5 container environment..."
yum makecache && yum install -y bash curl which
clear
echo "Environment ready!"
echo "done" > /etc/polyverse-env-ready
while true ; do script -q -c "/bin/bash -l" /dev/null ; done
EOF

chmod a+x /tmp/noexit.sh

docker run --name demo --rm -it -v /tmp/noexit.sh:/noexit.sh rhel:7.5 /bin/sh /noexit.sh