#!/bin/bash
# array-expansion.sh
iar=(a b c) # An indexed array
echo "${iar}"     # a
echo "${!iar[*]}" # 0 1 2
echo "${!iar[@]}" # 0 1 2
printf "iar has %s items\n" "${iar[*]}" # Makes 1 line
printf "iar has %s items\n" "${iar[@]}" # Makes 3 lines
