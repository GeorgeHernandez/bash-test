#!/bin/bash
# Substring expansion
str=01234567890abcdefgh
echo "str        ${str}"
echo "str:7      ${str:7}"      # 7890abcdefgh. Defaults to end==length
echo "str:7:0    ${str:7:0}"    # empty
echo "str:7:2    ${str:7:2}"    # 78
echo "str:7:-2   ${str:7:-2}"   # 7890abcdef. Negative are from the end.
echo "str: -7    ${str: -7}"    # bcdefgh. N.B The space before the -
echo "str: -7:-2 ${str: -7:-2}" # bcdef
set -- 01234567890abcdefgh # set the 1st positional parameter
echo "set 1 @     ${@}"
echo "set 1 *     ${*}"
echo "set 1 #     ${#}"
echo "set 1 1:7   ${1:7}"    # 7890abcdefgh
echo "set 1 1:7:2 ${1:7:2}"  # 78
set -- 1 2 3 4 5 6 7 8 9 0 a b c d e f g h # set multiple positional parameters
echo "set n @      ${@}"
echo "set n *      ${*}"
echo "set n #      ${#}"
echo "set n @:7    ${@:7}"      # 7 8 9 0 a b c d e f g h. If @, then 1-indexed instead of 0!
echo "set n @:7:2  ${@:7:2}" # 7 8
arr[0]=01234567890abcdefgh      # indexed arrary
echo "arr[0]     ${arr[0]}"     # 01234567890abcdefgh
echo "arr[0]:7   ${arr[0]:7}"   # 7890abcdefgh
echo "arr[0]:7:2 ${arr[0]:7:2}" # 78
