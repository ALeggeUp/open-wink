#!/bin/bash

curl -s https://www.openssl.org/source/openssl-1.1.0e.tar.gz -o openssl-1.1.0e.tar.gz

echo The next two lines should be the same
echo "51c42d152122e474754aea96f66928c6  openssl-1.1.0e.tar.gz"
md5sum openssl-1.1.0e.tar.gz

tar xzf openssl-1.1.0e.tar.gz

cd openssl-1.1.0e
patch -p1 < ../patches/openssl-1.1.0e-001-Configured.patch
