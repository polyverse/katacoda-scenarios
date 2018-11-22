#!/bin/sh

[ "$(docker exec demo /sbin/apk policy curl | grep -i polyverse)" != "" ] && echo "done"