#!/bin/bash
set -x

sudo apt-get install ubuntu-desktop
sudo apt-add-repository -y ppa:fkrull/deadsnakes
sudo apt-get update
sudo apt-get install -y python2.5-dev
sudo apt-add-repository -ry ppa:fkrull/deadsnakes

WX_VERSION=2.8.12.1

wget https://sourceforge.net/projects/wxpython/files/wxPython/${WX_VERSION}/wxPython-src-${WX_VERSION}.tar.bz2/download
mv download wxPython-src-${WX_VERSION}.tar.bz2
tar xvf wxPython-src-${WX_VERSION}.tar.bz2
cd wxPython-src-${WX_VERSION}

./configure --enable-gui
sudo make install
cd wxPython

sudo python2.5 setup.py WX_CONFIG="wx-config" BUILD_GLCANVAS=0 BUILD_ACTIVEX=0 BUILD_STC=0 BUILD_GIZMOS=0 install
