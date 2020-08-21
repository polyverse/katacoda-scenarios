#!/bin/bash
docker run -it --rm --name target -p 8000:80 polyverse/vulnerable-nginx-1.4.0:poly-dev
