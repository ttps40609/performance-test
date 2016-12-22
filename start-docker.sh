#!/bin/bash
read -p "How many containers do you want ? " containers
echo ${containers}
P=2999
for((i=0;i<${containers};i=i+1))
do
P=$((${containers}+1))
docker run -d -e PORT=${P} -e CONTAINERS=${containers} ttps40609/ubuntu:10.0 sh start.sh
done
source perf-docker.sh
