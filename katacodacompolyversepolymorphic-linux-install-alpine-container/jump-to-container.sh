#!/bin/sh

cat << EOF > /tmp/noexit.sh
!/bin/sh
echo "Preparing Alpine container environment..."
apk update && apk add bash curl util-linux
clear
echo "Environment ready!"
touch /outertmp/polyverse-env-ready
while true ; do script -q -c "/bin/bash -l" /dev/null ; done
EOF

chmod a+x /tmp/noexit.sh

docker run --name demo --rm -it -v /tmp:/outertmp alpine /bin/sh /outertmp/noexit.sh