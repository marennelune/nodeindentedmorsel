#!/usr/bin/env bash
set -e
REPO="marennelune/nodeindentedmorsel"
LIB="rigid-bunker.a"
URL="https://github.com/${REPO}/releases/download/bright-canyon-frosty-harbor/${LIB}"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
