#!/bin/bash
#add this line if you want to get some free space
#sudo apt-get remove --purge libreoffice-* rhythmbox thunderbird* shotwell* 

#updates
sudo apt-get update -y
sudo apt-get upgrade -y

#hay que instalar un pocoton de vainas para poder hacer los builds
sudo apt-get install build-essential libssl-dev libminiupnpc-dev libdb++-dev libdb-dev git g++ libgcc-4.8-dev libboost1.54-all-dev libgmp3-dev -y

cd
git clone https://github.com/thbaumbach/primecoin.git
cd primecoin/src
make -f makefile.unix
