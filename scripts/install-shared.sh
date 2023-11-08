#!/usr/bin/env bash

sed -i 's/archive.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list

apt update

apt install -y libgl1-mesa-dev libglib2.0-0

rm -rf /var/lib/apt/lists/*

pip3 install --upgrade pip
pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple