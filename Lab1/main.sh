#!/bin/bash
source ./interactive
	case $1 in
	 "calc")
 	 #read p1 p2 p3
	 bash ./calc $2 $3 $4;;
 	"search")
       	#read p1 p2
	bash ./search $2 $3;;
	 "reverse") 
	#read p1 p2	
	 bash ./reverse $2 $3;;
	 "strlen")  
	bash ./strlen $2;;
	"log") bash ./log;;
	"help") bash ./help;;
	"interactive")  interactive;;
	"exit")
	 if [[ $# -lt 2 ]]; then
	 exit 0;
	else
	exit $2;
	fi;;
 	*) echo "Comand is not found"
	esac
