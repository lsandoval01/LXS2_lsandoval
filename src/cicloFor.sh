#!/bin/bash

for a in casa carro caja
do
	echo "El valor de la variable \"a\" es : $a"
done

for a in `ls /home/sysadmin`
do
	echo $a
	ls -d /home/sysadmin/$a
done

for i in `find ~/Downloads`
do
	ls -l $i
done
