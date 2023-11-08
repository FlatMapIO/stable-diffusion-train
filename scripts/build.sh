#!/usr/bin/env bash

tag=huodon/kohya-ss:latest

git clone --depth 1 https://github.com/bmaltais/kohya_ss.git

cd kohya_ss
docker build -t $tag .
docker push $tag