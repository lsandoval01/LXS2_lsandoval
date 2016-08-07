#!/bin/bash


# Este script verifica si una distro esta soportada para la funcionalidad del
# programa

checkdistro ()
{
	echo "Distro $1 soportada"
	echo "En la estacion $HOSTNAME"
	last | head
}


errorout ()
{
	
	echo "Distro NO soportada"
	cowsay by by
	exit  1
}


shopt -s nocasematch

DISTRO=$1

case "$DISTRO" in
	Ubuntu)
		checkdistro $DISTRO
	;;
	Centos)	
		checkdistro $DISTRO
	;;
	Fedora)
		checkdistro $DISTRO
	;;
	*)
		errorout
	;;

esac
