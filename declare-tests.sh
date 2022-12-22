#!/bin/bash
# declare-tests.sh

# -i integer
echo 'Begin -i interger tests'
declare -i x
echo "empty: ${x}."  # empty
x=z
echo "string: ${x}." # string so err
x=3.1
echo "real: ${x}."   # real so 0
x=2
echo "int: ${x}."    # int 2

# -n name (Make NAME a reference to the variable named by its value)
echo
echo 'Begin -n name tests'
bar=b
declare -n foo=bar
echo "${foo} ${bar}" # b b
bar=c
echo "${foo} ${bar}" # c c

ape=a
declare bat=ape
echo "${bat} ${ape}" # ape a
ape=y
echo "${bat} ${ape}" # ape y


# -a indexed     array
# -A associative array
#   - 1 dimension
#   - no max limit beyond available memory
#   - any variable may be used as an array
#   - members referenced via ${name[key]}. If key not provided, then assumes 0.
#   - in a double-quoted string ${name[*]} expands all members as single   word
#   - in a double-quoted string ${name[@]} expands all members as separate words
#   - get # of members with     ${#name[*]} or ${#name[@]}

# indexed arrays
# indexed with non-negative integers
echo
echo 'Begin -a indexed array tests'
iarA[0]=a                                  # implicit creation & assignment
echo "iarA[*]: ${iarA[*]}"                 # a
declare -a iarB                            # explicit declaration
echo "iarB[*]: ${iarB[*]}"                 # empty
declare -a iarC[2]=c                       # explicit declaration & assignment
echo "iarC[*]: ${iarC[*]}"                 # c
iarA[0]=A                                  # set member value
echo "iarA[*]: ${iarA[*]}"                 # A
iarB+=(a b c [7]=h)                        # add members
echo "iarB[*]: ${iarB[*]}"                 # a b c h
echo "#iarC[*]: ${#iarC[*]}"               # get member count: 1
echo "iarA: ${iarA}"                       # get 1st member value since no key specified
for i in "${iarB[*]}";  do echo "$i"; done # show member values: a b c h
for j in "${!iarB[*]}"; do echo "$j"; done # show member keys:   0 1 2 7
unset "iarB[1]"                            # delete member
echo "iarB[*]: ${iarB[*]}"                 # a c h
readonly -a iarD=(a b c d)                 # explicit declaration & assignment but readonly
echo "iarD[*]: ${iarD[*]}"                 # a b c d
unset "iarD[1]"                            # delete from a readonly variable should fail
echo "iarD[*]: ${iarD[*]}"                 # a b c d


# associative arrays
# associated with arbitrary strings
echo
echo 'Begin -A associative array tests'
aarA[a]=ape                                # implicit creation & assignment
echo "aarA[*]: ${aarA[*]}"                 # ape
declare -A aarB[b]=bat                     # explicit declaration & assignment
echo "aarB[*]: ${aarB[*]}"                 # bat
aarB+=([a]=ape [c]=cat [e]=elf)            # add members
echo "aarB[*]: ${aarB[*]}"                 # ape bat cat elf
echo "#aarB[*]: ${#aarB[*]}"               # get member count: 4
echo "aarB: ${aarB}"                       # get empty since no key specified
for i in "${aarB[*]}";  do echo "$i"; done # show member values: a b c h
for j in "${!aarB[*]}"; do echo "$j"; done # show member keys:   0 1 2 7
