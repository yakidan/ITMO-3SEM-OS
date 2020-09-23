#!/bin/bash
function error(){
	>&2 echo "Error with code: $1"
	exit 1
}
