#!/bin/bash
sourse ./error
! [[ $# -lt 2 ]] && error 1
! [[ -f "$1" ]] && error 3;
! [[ -f "$2" ]] && error 3;
! [[ -r "$1" ]] && error 4;
! [[ -w "$2" ]] && error 5;
tac $1 > $2 
