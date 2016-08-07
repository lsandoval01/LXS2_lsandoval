#!/bin/bash

for a in casa carro caja
do
	echo "El valor de la variable \"a\" es : $a"
	if [[ $a == casa ]]
	then
		echo "Se encontro una casa!!"
	fi
done


