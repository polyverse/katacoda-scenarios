#!/bin/sh

[ "$(docker exec demo /bin/cat /etc/apt/sources.list |grep -i polyverse)" != "" ] && echo "done"
