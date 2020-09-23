#!/bin/bash
source ./interactive.sh
function error(){
	>&2 echo "Error: $1"
	if [[ $2 == "-i" ]]; then
	>&2
	interactive
	else
	exit 1
  fi
}
