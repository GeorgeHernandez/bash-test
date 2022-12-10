#!/bin/bash
# pattern-substitution.sh
str=abeaceadeabe
echo ${str/a??/ACK}  # ACKaceadeabe
echo ${str//a?/AA}   # AAeKAAeAAeAAe
echo ${str#a??/ACK}  # ACKaceadeabe  ### WIP: This does not work as I think
echo ${str%a??/ACK}  # abeaceadeACK  ### WIP: This does not work as I think
