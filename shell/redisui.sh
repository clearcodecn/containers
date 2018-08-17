#!/bin/bash

dir="./tmp"
mkdir $dir
git clone --recursive https://github.com/uglide/RedisDesktopManager.git -b 0.9 $dir && cd $dir
cd ./src && ./configure
make && make install 
