#!/bin/bash

curl -s https://mosquitto.org/files/source/mosquitto-1.4.11.tar.gz -o mosquitto-1.4.11.tar.gz

echo The next two lines should be the same
echo "c217dea4bdc7573a2eaea8387c18a19e  mosquitto-1.4.11.tar.gz"
md5sum mosquitto-1.4.11.tar.gz

tar xzf mosquitto-1.4.11.tar.gz

cd mosquitto-1.4.11
patch -p1 < ../patches/mosquitto-1.4.11-001-config.patch
