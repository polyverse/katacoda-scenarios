#!/bin/sh

[ "$(docker exec demo /bin/cat /etc/apk/repositories |grep -i polyverse)" != "" ] && echo "done"
