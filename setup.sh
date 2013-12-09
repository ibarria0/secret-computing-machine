#!/bin/bash

#bitcoin ppa
sudo add-apt-repository ppa:bitcoin/bitcoin -y

#updates
sudo apt-get update -y
sudo apt-get upgrade -y

#hay que instalar un pocoton de vainas para poder hacer los builds
sudo apt-get install build-essential libssl-dev boost-defaults libminiupnpc-dev libdb4.8-dev libdb4.8++-dev git -y

#build libboost
cd
wget 'http://downloads.sourceforge.net/project/boost/boost/1.48.0/boost_1_48_0.tar.gz?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fboost%2Ffiles%2Fboost%2F1.48.0%2F&ts=1386633376&use_mirror=softlayer-ams'
tar -xvf boost_1_48_0.tar.gz
cd boost_1_48_0
sudo ./bootstrap.sh
sudo ./bjam install

cd
git clone https://github.com/donSchoe/xolominer.git
cd xolominer
cd src
make -f makefile.unix
