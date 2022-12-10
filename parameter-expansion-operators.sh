#!/bin/bash
# parameter-expansion-operators.sh
foo="one\ntwo\n\tlast"
echo "${foo}"
echo "A: ${foo@A}" # asssignment form
echo "a: ${foo@a}" # attributes
echo "E: ${foo@E}" # escaped
echo "Q: ${foo@Q}" # quoted
echo "P: ${foo@P}" # prompt
echo

joe="joe slow"
echo "${joe}"
echo "U: ${joe@U}" # all upper ### WIP: This does not work as I think
echo "u: ${joe@u}" # 1st upper ### WIP: This does not work as I think
echo "L: ${joe@L}" # all lower ### WIP: This does not work as I think
echo

iar=(a b c)
echo ${iar[@]}
echo "K: ${iar@K}" # keys & values quoted ### WIP: This does not work as I think
echo "k: ${iar@k}" # keys & values        ### WIP: This does not work as I think
