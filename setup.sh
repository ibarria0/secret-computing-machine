#!/bin/bash
#add this line if you want to get some free space
#sudo apt-get remove --purge libreoffice-* rhythmbox thunderbird* shotwell* 

#bitcoin ppa
sudo add-apt-repository ppa:bitcoin/bitcoin -y

#updates
sudo apt-get update -y
sudo apt-get upgrade -y

#hay que instalar un pocoton de vainas para poder hacer los builds
sudo apt-get install build-essential libssl-dev libminiupnpc-dev libdb++-dev libdb-dev git gcc-4.8 g++-4.8 libgcc-4.8-dev libboost-all-dev libboost-dev libgmp3-dev -y

#latest gcc and g++
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 50
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 50

cd
git clone https://github.com/donSchoe/xolominer.git
cd xolominer
cd src
make -f makefile.unix
