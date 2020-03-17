#!/bin/bash
docker run -p 8080:8080 -d --rm polyverse/detect-demo-dashboard
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
