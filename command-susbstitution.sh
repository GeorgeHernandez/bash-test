#!/bin/bash
# command-susbstitution.sh
greeting="Welcome"  # E.g. of a regular variable
user=$(whoami)      # E.g of command substitution variable
day=$(date +%A)
echo "$greeting back $user! Today is $day, which is the best day of the entire week!"
echo "Your Bash shell version is: $BASH_VERSION. Enjoy!"
# $BASH_VERSION is an internal variable built-into the shell.
var=$(df -h | grep tmpfs)
echo "$var"  # check on the virtual memory
