#!/bin/sh

[ "$(docker exec demo /usr/bin/dpkg --get-selections | awk '{print $1}' | xargs docker exec demo /usr/bin/apt-cache madison |grep -i polyverse)" != "" ] && echo "done"