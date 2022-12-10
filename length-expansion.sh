#!/bin/bash
# length-expansion.sh
str=Hello
echo "str '${str}' has length ${#str}" # 5
echo "* '${*}' has length ${#*}"       # 0
echo "@ '${@}' has length ${#@}"       # 0
iar=(a bb ccc) # An indexed array
echo "iar '${iar}' has length ${#iar}" # 1
echo "iar '${iar[1]}' has length ${#iar[1]}" # 3
echo "iar '${iar[-1]}' has length ${#iar[-1]}" # 3
echo "iar '${iar[*]}' has length ${#iar[*]}" # 3
