#!/bin/bash
source ./error
[[ $# -lt 1 ]] && error 1;
echo ${#1}
