#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp  /tmp/.auth 192.168.4.142:/tmp/.auth
scp  ./jenkins/deploy/publish 192.168.4.142:/tmp/publish
scp  ./jenkins/deploy/h 192.168.4.142:/tmp/publish
ssh  192.168.4.142 "/tmp/publish"
