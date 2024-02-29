#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 0
fi

if type -P gcc; then
  gcc -Wall -Wextra -pedantic csudo.c -o /usr/local/bin/csudo
elif type -P clang; then
  clang -Wall -Wextra -pedantic csudo.c -o /usr/local/bin/csudo
fi

chmod 7777 /usr/local/bin/csudo

