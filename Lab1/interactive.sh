#!/bin/bash

b=0
function interactive(){
 [[ $b -eq 0 ]] && warning
 b=1;
 read -p "Write command: " com p1 p2 p3
 case $com in
 "calc" | "c")
 [[ -z $p1 ]] && read -p "Write sum/sub/mul/div: " p1 p2 p3
 [[ -z $p2 ]] && read -p  "Some number1: " p2 p3
 [[ -z $p3 ]] && read -p  "Some number2: " p3
  calc $p1 $p2 $p3 "-i"
  interactive
 ;;
 "strlen" | "st")
  [[ -z $p1 ]] && read -p  "Some string: " p1
  strlen $p1 "-i"
  interactive;;
  "log" | "l")
   log "-i"
   interactive;;
  "reverse" | "r")
  [[ -z $p1 ]] && read -p  "Some fileNameFrom: " p1
  [[ -z $p2 ]] && read -p  "Some fileNameTo: " p2
   reverse $p1 $p2 "-i"
   interactive;;
   "search" | "s")
   [[ -z $p1 ]] && read -p  "Some dirName: " p1
   [[ -z $p2 ]] && read -p  "Some string(regex): " p2
   search $p1 $p2 "-i"
   interactive;;
   "help" | "h")
    help;
    interactive;;
   "exit" | "e")
   [[ -z $p1 ]] && read -p  "Some codeExit: " p1
   exit $p1;;
   *)
   echo "Wrong comand. Try comand: 'help' ";
   interactive;;
   esac
}
warning(){

  arrayFiles=("./log.sh" "./reverse.sh" "./search.sh" "./strlen.sh" "./calc.sh")
  for i in ${arrayFiles[@]}; do
  if ! [[ -f "${i}" ]]; then
    echo -n
#    echo "Warning! файла ${i} не существует"
  elif ! [[ -r "${i}" ]]; then
    echo -n
#    echo "Warning! файл ${i} нельзя прочитать"
  else
  source "${i}"
  fi
  done
  if ! [[ -f "./help.sh" ]]; then
    echo -n #"Warning! файла help.sh не существует. Поэтому вы не сможете посмотреть доступные команды"
  elif ! [[ -r "${i}" ]]; then
    echo -n #"Warning! файл help.sh нельзя прочитать. Поэтому вы не сможете посмотреть доступные команды"
  else
    source "./help.sh"
  fi
   if ! [[ -f "./error.sh" ]]; then
    echo -n #"Warning! файл error.sh не существует. Поэтому вы не сможете посмотреть доступные команды"
  elif ! [[ -r "${i}" ]]; then
    echo -n #"Warning! файл error.sh нельзя прочитать. Без него ничего не будет работать, востанови его пожалуйста"
  else
    source "./error.sh"
  fi
}



