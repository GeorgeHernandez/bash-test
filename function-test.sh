#!/bin/bash
# function-test.sh
fun1 () {
  local x='local'
  echo "In fun1, x is ${x}" # local
  fun2
}
fun2 () {
  echo "In fun2, x is ${x} by shadow" # local
  unset x
  echo "In fun2, x is ${x} by unset" # global
  local x='local'
  echo "In fun2, x is ${x}" # local
}
x='global'
echo "x is ${x} at 1st"  # global
fun1
echo "x is ${x} at last" # global
