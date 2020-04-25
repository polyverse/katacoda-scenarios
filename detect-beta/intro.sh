#!/bin/bash

echo "Starting dashboard..."
docker run -p 8080:8080 -d --rm polyverse/detect-demo-dashboard

echo "Installing Polytect..."
curl -L https://github.com/polyverse/polytect/releases/latest/download/install.sh | sudo sh -s "xU9XiObcoKnSNpRhpuwt5Lrem" "katacoda_detect_scenario"
