#!/bin/bash
source ./error.sh
function search() {
   [[ $# -eq 0 ]] && error "Директорию нужно ввести как минимум:
  Например вот так: ../Lab1 [a-z]"
  ! [[ -d $1 ]] && error "Это не директория" "$3"
  ! [[ -r $1 ]] && error "Эту директорию невозможно прочитать" "$3"
  if [[ $# -eq 1 ]]; then
    read -p "Хотите вывести все что есть в папке?(y/anything)" bol
    [[ $bol == y ]] && grep -r .* "$1" 2>/dev/null
    ! [[ $bol == y ]] && grep -r "$2" "$1" 2>/dev/null
  else
    grep -r "$2" "$1" 2>/dev/null
  fi
}
