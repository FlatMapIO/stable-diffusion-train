#!/usr/bin/env bash

tag=huodon/kohya-ss:latest

if [[ ! -d kohya_ss ]]; then
  git clone --depth 1 https://github.com/bmaltais/kohya_ss.git
fi

cd kohya_ss
cp ../docker/Dockerfile.local .
cp ../scripts/install-shared.sh .

docker build -f Dockerfile.local -t $tag .
docker push $tag