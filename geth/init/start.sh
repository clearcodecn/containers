#!/bin/sh

# 初始化创世快
geth init /init/init.json 

# 私链
bootnode --genkey=boot.key
bootnode --nodekey=boot.key & 

# 启动
geth


