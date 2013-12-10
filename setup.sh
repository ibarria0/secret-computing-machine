#!/bin/bash
sudo apt-get remove --purge libreoffice-* rhythmbox

#bitcoin ppa
sudo add-apt-repository ppa:bitcoin/bitcoin -y

#updates
sudo apt-get update -y
sudo apt-get upgrade -y

#hay que instalar un pocoton de vainas para poder hacer los builds
sudo apt-get install build-essential libssl-dev boost-defaults libminiupnpc-dev libdb4.8-dev libdb4.8++-dev git -y

#build libboost
cd
wget -O boost.tar.gz 'http://downloads.sourceforge.net/project/boost/boost/1.48.0/boost_1_48_0.tar.gz'
tar -xvf boost.tar.gz
cd boost_1_48_0
sudo ./bootstrap.sh
sudo ./bjam install

cd
git clone https://github.com/donSchoe/xolominer.git
cd xolominer
cd src
make -f makefile.unix
