#!/bin/sh
apt-get update && apt-get install -y bash
while true ; do script -q -c "/bin/bash -l" /dev/null ; done
