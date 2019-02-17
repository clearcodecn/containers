#!/bin/sh

# 初始化创世快
geth init /init/init.json 

# 私链
bootnode --genkey=boot.key
bootnode --nodekey=boot.key & 

geth --bootnodes=enode://cc5a17554a9378fcb882b35906c01624290f7bf941eb22b2add49fa09e6eafa717d980b468f92ec67dd738453963e99515cc9ee40aeef502d1590465e8ba58d5@192.168.0.106:30301


