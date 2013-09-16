#!/bin/bash

cd $CLAW/apps/advection/1d/example1

make clean > message.txt
make clobber >> message.txt
make .plots >> message.txt


if grep -Fxq file:// message.txt #grep find will return 0 
then
	echo "Example can not be compiled, please check $CLAW/apps/advection/1d/example1/message.txt for details"
else
	echo "=======Congratulations!!=========="
	echo "You have successfully installed Clawpack in $CLAW!"
	echo "An 1d example has been compiled and you can find the result by pointing your browser to"
	grep file:// message.txt
fi

if grep -Fxq "file://" message.txt 
then
	echo "Example can not be compiled, please check $CLAW/apps/advection/1d/example1/message.txt for details"
else
	grep -B1 http:// message.txt
fi
