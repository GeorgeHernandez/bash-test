#!/bin/bash
# process substitution
echo >(true)         # /dev/fd/63. A file made by process substitution.
echo <(true)         # /dev/fd/63. A file made by process substitution.
echo >(true) <(true) # /dev/fd/63 /dev/fd/62. Files made by process substitution.
echo <(echo Hi Joe)  # /dev/fd/63. A file made by process substitution.
cat  <(echo Hi Joe)  # Hi Joe, i.e. like cat /dev/fd/63
echo wc test:
wc <(cat README.md)  # 3 7 43 /dev/fd/63. Word count on a file.
echo comm test:
comm <(ls -1) <(ls -1a)            # compare the same directory to find hidden files
echo diff test:
diff <(ls /tmp) <(ls /var)         # compare different directories
echo ls test:
ls > >(tee ackack.txt barbar.txt)  # run ls to make a file to pass to tee to make 2 files
