#!/bin/bash

# Node
# Find versions here: http://nodejs.org/dist/
NODE_VERSION="0.10.33"
# NODE_VERSION="0.8.27"
NODE_PLATFORM="linux"
NODE_ARCH="x64"
NODE_PATH="/opt/nodejs-v$NODE_VERSION"

mkdir -pv "$NODE_PATH"

curl "http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-$NODE_PLATFORM-$NODE_ARCH.tar.gz" | \
tar xzvf - --strip-components=1 -C "$NODE_PATH"

ln -sfv "$NODE_PATH/bin/node" "/usr/bin/node"
ln -sfv "$NODE_PATH/bin/npm" "/usr/bin/npm"

npm install pm2 -g --unsafe-perm
