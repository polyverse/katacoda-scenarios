#!/bin/sh

cat << EOF > /tmp/noexit.sh
#!/bin/sh
echo "Preparing Alpine container environment..."
apk update && apk add bash curl util-linux
clear
echo "Environment ready!"
echo "done" > /etc/polyverse-env-ready
while true ; do script -q -c "/bin/bash -l" /dev/null ; done
EOF

chmod a+x /tmp/noexit.sh

docker run --name demo --rm -it -v /tmp/noexit.sh:/noexit.sh alpine:3.11 /bin/sh /noexit.sh