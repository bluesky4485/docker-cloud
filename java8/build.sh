#!/bin/bash

# 清除已有的
docker stop java8
docker rm java8
docker rmi kolehank/java8 

# 重新生成
docker build -t kolehank/java8 ./
