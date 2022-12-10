#!/bin/bash
# pattern-expansion.sh
# Pattern matching with globbing:
# * 0..*
# ? 1..1
var="open source"
echo ${var#*o?}  # en source
echo ${var##*o?} # rce
echo ${var%?e*}  # open sour
echo ${var%%?e*} # o
