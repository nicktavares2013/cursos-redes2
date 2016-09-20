#!/bin/bash

apt-get build-dep squid3 -y
apt-get install libssl-dev libxmlsec1-dev -y
apt-get source squid3

cd squid3.4.8
./configure --enable-ssl
make all && make install

