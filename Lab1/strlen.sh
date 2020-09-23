#!/bin/bash
source ./error.sh
function strlen() {
  [[ $# -lt 1 ]] && error "Нужно передать какую-либо строку, а не пустоту" "$2"
  echo ${#1}
}
