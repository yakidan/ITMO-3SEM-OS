#!/bin/bash
interactive(){
echo "ECHO"
 read -p "Write command: " com p1 p2 p3 
 case $com in
 "calc" | "c")
 [[ -z $p1 ]] && read -p "Write sum/sub/mul/div: " p1
 [[ -z $p2 ]] && read -p  "Some number1: " p2
 [[ -z $p3 ]] && read -p  "Some number2: " p3
  bash ./calc $p1 $p2 $p3
  interactive
 ;;
 "strlen" | "st") 
  [[ -z $p1 ]] && read -p  "Some string: " p1
  bash ./strlen $p1
  interactive;;
  "log" | "l")
   bash ./log  
   interactive;;
  "reverse" | "r")
  [[ -z $p1 ]] && read -p  "Some dirNameFrom: " p1
  [[ -z $p2 ]] && read -p  "Some dirNameTo: " p2
   bash ./reverse $p1 $p2
   interactive;;
   "search" | "s")
   [[ -z $p1 ]] && read -p  "Some dirName: " p1
   [[ -z $p2 ]] && read -p  "Some string(regex): " p2
   bash ./search $p1 $p2
   interactive;;
   "help" | "h")
    bash ./help
    interactive;;
   "exit" | "e")
   [[ -z $p1 ]] && read -p  "Some codeExit: " p1
   exit $p1;  
   interactive;;
   *)
   echo "Wrong comand";;
   interactive;
   esac
}

