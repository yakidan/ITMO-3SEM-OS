#!/bin/bash
#source ./interactive.sh
#source ./log.sh
#source ./calc.sh
#source ./reverse.sh
#source ./search.sh
#source ./strlen.sh
#source ./help.sh
#source ./error.sh
warning(){

  arrayFiles1=("./log.sh" "./reverse.sh" "./search.sh" "./strlen.sh" "./interactive.sh" "calc.sh")
  for i in ${arrayFiles1[@]}; do
  if ! [[ -f "${i}" ]]; then
    echo "Warning! файла ${i} не существует"

  elif ! [[ -r "${i}" ]]; then
    echo "Warning! файл ${i} нельзя прочитать"
  else
  source "${i}"
  fi
  done
  if ! [[ -f "./help.sh" ]]; then
    echo "Warning! файла help.sh не существует. Поэтому вы не сможете посмотреть доступные команды"
  elif ! [[ -r "${i}" ]]; then
    echo "Warning! файл help.sh нельзя прочитать. Поэтому вы не сможете посмотреть доступные команды"
  else
    source "./help.sh"
  fi
   if ! [[ -f "./error.sh" ]]; then
    echo "Warning! файл error.sh не существует. Поэтому вы не сможете посмотреть доступные команды"
  elif ! [[ -r "${i}" ]]; then
    echo "Warning! файл error.sh нельзя прочитать. Без него ничего не будет работать, востанови его пожалуйста"
  else
    source "./error.sh"
  fi
}
warning
  case $1 in
  "calc")
    #read p1 p2 p3
    calc $2 $3 $4
    ;;
  "search")
    #read p1 p2
    search $2 $3
    ;;
  "reverse")
    #read p1 p2
    reverse $2 $3
    ;;
  "strlen")
    strlen "${2}"
    ;;
  "log") log ;;
  "help")
    help
    ;;
  "interactive") interactive;;
  "exit")
    if [[ $# -eq 2 ]]; then
      exit 0
    else
      exit $2
    fi
    ;;
  *) echo "Команда не найдена. Попробуй вызвать -help-
  для того, чтобы посмотреть какие команды присутствуют" ;;
  esac

