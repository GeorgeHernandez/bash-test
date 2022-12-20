#!/bin/bash
# mapfille-test.sh
mapfile giant < <(printf "fee\nfi\nfoe\nfum")
echo "giant as is: ${giant[*]}"
mapfile -t giant_tabless < <(printf "fee\nfi\nfoe\nfum")
echo "giant tabless: ${giant_tabless[*]}"
mapfile threes < example.txt
echo -n "The 1st item: ${threes[0]}"
mapfile -n 3 threes_top3 < example.txt
echo -n "The top items: ${threes_top3[*]}"
