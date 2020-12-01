#!/bin/sh

isready=$(docker exec demo /bin/cat /etc/polyverse-env-ready)
if [ "$isready" = "done" ]; then
    exit 0
fi
exit 1