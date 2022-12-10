#!/bin/bash
# zscrap.sh
echo a{b,c,d}e     # abe ace ade
echo "a"{b,c,d}"e" # abe ace ade
echo 'a'{b,c,d}'e' # abe ace ade
echo "a{b,c,d}e"   # a{b,c,d}e
echo {A,B}         # A B
echo {A, B}        # {A, B} i.e. no space after comma for brace expansions
echo {1..5}        # 1 2 3 4 5
echo {1..5},       # 1, 2, 3, 4, 5,
echo {1..5..2}     # 1 3 5
