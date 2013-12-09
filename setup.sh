#!/bin/bash

#go to home dir
cd

#bitcoin ppa
sudo add-apt-repository ppa:bitcoin/bitcoin -y

#updates
sudo apt-get update -y
sudo apt-get upgrade -y

#hay que instalar un pocoton de vainas para poder hacer los builds
sudo apt-get install build-essential libssl-dev libboost-all-dev libboost-chrono1.48-dev libboost-filesystem1.48-dev libboost-system1.48-dev libboost-program-options1.48-dev libboost-thread1.48-dev libminiupnpc-dev libdb4.8-dev libdb4.8++-dev git -y

git clone git@github.com:donSchoe/xolominer.git
cd xolominer
cd src
make -f makefile.unix
