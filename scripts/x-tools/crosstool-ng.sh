#!/bin/bash

curl -s http://crosstool-ng.org/download/crosstool-ng/crosstool-ng-1.23.0.tar.bz2 -o crosstool-ng-1.23.0.tar.bz2

echo The next two lines should be the same
echo "dc861702ecce216d1855c8185f0f1873  crosstool-ng-1.23.0.tar.bz2"
md5sum crosstool-ng-1.23.0.tar.bz2

tar xjf crosstool-ng-1.23.0.tar.bz2 --transform="s/^crosstool-ng/crosstool-ng-1.23.0/"

cd crosstool-ng-1.23.0-1.23.0
./configure --prefix=/opt/x-tools/crosstool-ng-1.23.0
make
make install
cd ..
