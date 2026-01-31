#!/bin/bash
set -e

echo "[INFO] Apply extra feeds config..."

sed -i 's/git.openwrt.org\/feed/github.com\/openwrt/g' feeds.conf.default
sed -i 's/git.openwrt.org\/project/github.com\/openwrt/g' feeds.conf.default

if ! grep -q "2305ipk" feeds.conf.default; then
  echo "src-git 2305ipk https://github.com/xiangfeidexiaohuo/2305-ipk" >> feeds.conf.default
fi
