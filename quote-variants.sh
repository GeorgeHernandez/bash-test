#!/bin/bash
# quote-variants.sh
a=ape
b="bat"
c='cat'
echo $a
echo "$b"
echo "${c}"
echo $a' bad'
echo $b "bad"
echo "${c} good" # Most consistent usage of variable in a string
