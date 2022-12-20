#!/bin/bash
# brackets-explored.sh

#  ( list of commands )
(true; date)

# $( list of commands stringified; command-substitution )
echo "The date is $( date )"

#  (( arithmetic-expression ))
(( 2 + 3 ))

# $(( arithmetic-expression stringified; arithmetic-expansion ))
#   $[arithmetic-expression stringified]   # Legacy deprecated syntax # Not POSIX
# let arithmetic-expression # Not POSIX
# expr expression # More Linux than Bash. Not just arithmetic-expressions. Legacy & deprecated.
echo "The sum is $(( 2 + 3 ))"
let "x=3" "y=5" "sum=x+y"; echo "The sum is $sum"
expr 5 + 8

# <( process substitution) # like a pipe but can be used like a file argument
# comm <(ls -1) <(ls -1a)

#    [ conditional-expression ]  # POSIX compliant
#   [[ conditional-expression ]] # Bash  compliant. Generally a better implementation.
# test conditional-expression
age=7
if [[ age -ge 18 ]]; then
  echo "Adult"
else
  echo "Child"
fi
age=77
# similar to the common ternary operator ( test-me ? if-true : if-false)
test $age -ge 18 && echo "Adult" || echo "Child"

#  {shell-expansion} # Many variants
echo h{a,e,i,o,u}p

# ${shell-expansion stringified}
animal=bat
echo "${animal^^b}man is ${#animal}"
