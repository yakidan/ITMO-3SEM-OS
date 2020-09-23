#!/bin/bash
source ./error
[[ $# -lt 2 ]] && error 1
[[ -f $1 ]] && error 3
[[ -r $1 ]] && error 4
grep -r -E $2 $1
