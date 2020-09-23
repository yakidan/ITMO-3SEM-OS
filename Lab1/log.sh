#!/bin/bash
source ./error
! [[ -f "/var/log/anaconda/X.log"]] && error 3;
text=$(cat /var/log/anaconda/X.log)
 IFS=$'\n'
 YELLOW="\e[1;33m"
 BLUE="\e[1;34m"
 DEFAULT="\033[0;39m"
 output=$(mktemp)
 output=$(mktemp)
for line in $text; do
 if [[ $line =~ .*WW.* ]];
 then
 echo -e "${line/WW/$YELLOW Warning $DEFAULT}" >> output;
 elif [[ $line =~ .*I{2}.* ]];
 then

 echo -e "${line/II/$BLUE Information $DEFAULT}" >> output2; 
 fi
done
cat output;
rm output;
cat output2;
rm output2;

