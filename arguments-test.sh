#!/bin/bash
# arguments-test.sh
# Run me with somthing like:
# bash arguments-test.sh ape 78 'Fruit Salad' "$HOME"

echo "The file name is: $0"
echo "Here are arguments of the positional parameters:"
echo "  The 1st argument is: $1"
myvar=$2
echo "  The 2nd argument is: $myvar"
echo "  The 3rd argument is: $3"
echo "  The 4th argument is: $4"
echo "All the arguments: $*"
echo "Loop through the number of parameters ($#)"
i=1
for arg in "$@"; do
  echo "  Argument #$i: $arg"
  i=$((i + 1))
done
