#!/bin/bash


#check if currentuser is root
check_root(){

if [[ $EUID -ne 0 ]]; then
	echo "Please run as a root user"
	exit 1
fi
}
