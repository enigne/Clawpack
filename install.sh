#!/bin/bash
version=4.6.3

# Create Installing PATH
mkdir Clawpack
cd Clawpack

# Check Prerequisites
sudo apt-get update
sudo apt-get install -y make
sudo apt-get install -y gfortran 
sudo apt-get install -y git
sudo apt-get install -y git-core
sudo apt-get install -y python-dev
sudo apt-get install -y python-numpy
sudo apt-get install -y python-matplotlib

# Download clawpack 4.6.3
echo "Download CLawpack 4.6.3"
wget http://depts.washington.edu/clawpack/download/clawpack-$version.tar.gz
tar -zxvf clawpack-$version.tar.gz
cd clawpack-$version

# Setting Enviroment Variables
#python setenv.py
source setenv.bash
source setenv.csh



