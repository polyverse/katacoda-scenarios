#!/bin/sh

[ "$(dpkg --get-selections | awk '{print $1}' | xargs apt-cache madison | grep -i polyverse)" != "" ] && echo "done"