#!/bin/bash
clear
version=4.6.3

# Create Installing PATH
cd ~/
mkdir Clawpack -p
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
wget -nc http://depts.washington.edu/clawpack/download/clawpack-$version.tar.gz
tar -kzxf clawpack-$version.tar.gz
cd clawpack-$version

# Setting Enviroment Variables
python setenv.py

if [ -f ~/.bashrc ];
then
	echo "Set enviroment variables to ~/.bashrc"
	cat setenv.bash >> ~/.bashrc
	source setenv.bash
else
	echo "Set enviroment variables to ~/.cshrc"
	cat setenv.csh >> ~/.cshrc
	source setenv.csh
fi

echo "==========Installation Finished=============="
echo "You can try the examples now!"
