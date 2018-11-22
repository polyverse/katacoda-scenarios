#!/bin/sh

[ "$(docker exec demo /bin/cat /etc/yum.repos.d/polyverse.repo)" != "" ] && echo "done"
