#!/bin/bash
# prefix-expansion.sh
echo "${USER}"  # ghz  or whoever you are
echo ${UID}   # 1000 or the like
echo "${!U*}"   # UID USER
echo "${!U@}"   # UID USER
bat=Wayne
boy=Carl
echo "${!b*}"   # bat boy
echo "${!b@}"   # bat boy
