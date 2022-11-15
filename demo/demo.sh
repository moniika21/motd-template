#!/bin/bash

colors=(
  "\e[38;2;0;0;0m"
  "\e[38;2;255;0;0m"
  "\e[38;2;0;255;0m"
  "\e[38;2;255;255;0m"
  "\e[38;2;96;64;32m"
  "\e[38;2;0;0;255m"
  "\e[38;2;255;0;255m"
  "\e[38;2;255;96;192m"
  "\e[38;2;0;255;255m"
  "\e[38;2;255;96;0m"
  "\e[38;2;128;128;128m"
  "\e[38;2;255;255;255m"
  "\e[48;2;0;0;0m"
  "\e[48;2;255;0;0m"
  "\e[48;2;0;255;0m"
  "\e[48;2;255;255;0m"
  "\e[48;2;96;64;32m"
  "\e[48;2;0;0;255m"
  "\e[48;2;255;0;255m"
  "\e[48;2;255;96;192m"
  "\e[48;2;0;255;255m"
  "\e[48;2;255;96;0m"
  "\e[48;2;128;128;128m"
  "\e[48;2;255;255;255m"
  '\e[0;30m'
  '\e[0;31m'
  '\e[0;32m'
  '\e[0;33m' # Can be yellow or brown depending on terminals
  '\e[0;34m'
  '\e[0;35m'
  '\e[0;36m'
  '\e[0;37m'
  "\e[40m"
  "\e[41m"
  "\e[42m"
  "\e[43m"
  "\e[44m"
  "\e[45m"
  "\e[46m"
  "\e[47m"
)

for color in "${colors[@]}"; do
  #echo -e "$color word \e[0m"
  ../30-sysinfo "$color" >>demo.txt
done