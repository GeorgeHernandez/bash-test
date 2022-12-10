#!/bin/bash
# case-substitution.sh
title="The Lord of the Rings"
upp=${title^^}
low=${title,,}
echo 1 "${upp}"      # 1 THE LORD OF THE RINGS
echo 2 "${low}"      # 2 the lord of the rings
echo 3 "${low^}"     # 3 The lord of the rings
echo 4 "${upp,}"     # 4 tHE LORD OF THE RINGS
echo 5 "${low^^r}"   # 5 the loRd of the Rings
echo 6 "${upp,,R}"   # 6 THE LOrD OF THE rINGS
echo 7 "${low^r}"    # 7 the loRd of the rings ### WIP: This does not work as I think
echo 8 "${upp,R}"    # 8 THE LOrD OF THE RINGS ### WIP: This does not work as I think
echo 9 "${upp/S/s}"  # 9 THE LORD OF THE RINGs
