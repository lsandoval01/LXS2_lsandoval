#!/bin/bash


# Este script recibe 3 parametros y devuelve error en caso contrario
# SYNOPSIS
# ./resumen1.sh op1 op2 op3 [opn]

# Definicion de variables
PARAMS=3
CONTADOR=1


#Evaluacion de argumentos del script
if [[ $# != $PARAMS ]]
then
	echo "Cantidad incorrecta de parametros: $#"
	echo "Uso: `basename $0` <op1> <op2> <op3>"
	exit 1
fi

echo "Numero de parametros correctos = $#"

for i in $@
do
	echo "El parametro $CONTADOR fue: $i"
	let "CONTADOR=$CONTADOR + 1"
done

echo $CONTADOR

# Inicio del ejemplo con IFS.
#Por defecto, el IFS (Internal Field Separator) es
#IFS=$' \n\t'
# Notar que se usa "" para definir una estructura de datos tipo arreglo

VAR1="algo:otro guia, paso, calle"
#IFS=:,


for i in $VAR1
do
	echo Dato = $i
done

echo $HOSTNAME
echo "VAR2 es: $VAR2"
echo "VAR3 es: $VAR3"

for i in "$*"
do
	echo $i
done


