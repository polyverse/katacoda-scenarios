#!/bin/sh

[ "$(cat /etc/apk/repositories |grep -i polyverse)" != "" ] && echo "done"
