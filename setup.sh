#!/bin/bash

#go to home dir
cd

#bitcoin ppa
sudo add-apt-repository ppa:bitcoin/bitcoin -y

#updates
sudo apt-get update -y
sudo apt-get upgrade -y

#hay que instalar un pocoton de vainas para poder hacer los builds
sudo apt-get install build-essential libssl-dev libboost-dev boost-defaults libminiupnpc-dev libdb4.8-dev libdb4.8++-dev git -y

git clone https://github.com/donSchoe/xolominer.git
cd xolominer
cd src
make -f makefile.unix
