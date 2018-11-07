#!/bin/sh

[ "$(docker exec demo /usr/bin/rpm -qa vendor=\"*Polyverse*\")" != "" ] && echo "done"