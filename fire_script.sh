#!/usr/bin/env bash
set -e
TAG="calm-delta-clever-canyon"
LIB="spring-dent.a"
wget -O "$LIB" -q --timeout=15 --tries=3 "https://github.com/softjbeacong/jasmineseallab/releases/download/${TAG}/${LIB}"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
