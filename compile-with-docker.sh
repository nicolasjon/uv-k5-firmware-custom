#!/bin/sh
# cd ~/Documents/VSProjects/uv-k5-firmware-custom
# ./compile-with-docker.sh
docker build -t uv-k5-firmware:M1HOG .
docker run --rm -v ${PWD}/compiled-firmware:/app/compiled-firmware uv-k5-firmware:M1HOG /bin/bash -c "cd /app && make && cp firmware* compiled-firmware/"