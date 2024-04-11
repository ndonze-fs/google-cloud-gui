#!/bin/bash

cd "$(dirname "$0")"
rm -fr build
mkdir build

cp README.md build/

cd server
npm i
cp -r . ../build/

cd ../client
npm i
npm run build

cp -r build ../build/src/public
