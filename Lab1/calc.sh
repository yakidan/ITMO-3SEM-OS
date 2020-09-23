#!/bin/bash
source ./error
[[ $# -lt 3 ]] && error 1
! [[ $2 =~ ^-?[0-9]+$ ]] && error 2;
! [[ $3 =~ ^-?[0-9]+$ ]] && error 2;

case "$1" in
 "sum")
 echo $(($2+$3));
 ;;
 "sub")
 echo $(($2-$3));
 ;;
 "mul")
 echo $(($2\*$3));
 ;;
 "div")
 [[ $3 -lt 0 ]] && error 6
 echo $(($2/$3));
 ;;
esac
