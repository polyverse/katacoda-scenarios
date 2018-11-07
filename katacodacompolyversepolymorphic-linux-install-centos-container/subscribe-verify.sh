#!/bin/sh

[ "$(cat /etc/apt/sources.list |grep -i polyverse)" != "" ] && echo "done"
