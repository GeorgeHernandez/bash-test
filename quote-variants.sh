#!/bin/bash
# quote-variants.sh
a=ape             # No quote        Expressions: No   Singles: No   Escapes: No     Spaces: No
b='bat\t$$a'      # Single          Expressions: No   Singles: No   Escapes: No     Spaces: Yes
c=$'cat\t$$a\''   # Single ANSI     Expressions: No   Singles: \'   Escapes: Yes    Spaces: Yes
d="dog\t\$$a'"    # Double          Expressions: Yes  Singles: Yes  Escapes: Some   Spaces: Yes
e=$"elf\t\$$a'"   # Double Locale   Expressions: Yes  Singles: Yes  Escapes: Some   Spaces: Yes
echo "$a"
echo "$b"
echo "$c"
echo "$d"
echo "$e"
echo "$a isn't"$'\tsad'     # Strings can go side-by-side
echo "${a^^a}boy is ${#a}"  # There are many parameter expansion options available
