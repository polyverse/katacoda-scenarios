#!/bin/sh

[ "$(docker exec demo /sbin/apk policy musl | grep -i polyverse)" != "" ] && echo "done"