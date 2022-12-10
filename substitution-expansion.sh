#!/bin/bash
# substitution-expansion.sh
k=old # known. u,v,w,x start as unset

echo ':- is substitution'
echo "k: ${k}, in: ${k:-new}, k: ${k}." # k: old, in: old, k: old.
echo "u: ${u}, in: ${u:-new}, u: ${u}." # u: , in: new, u: .
echo
echo ':= is assignment, substitution'
echo "k: ${k}, in: ${k:=new}, k: ${k}." # k: old, in: old, k: old.
echo "v: ${v}, in: ${v:=new}, v: ${v}." # v: , in: new, v: new.
echo
echo ':+ is substitution if parameter is known'
echo "k: ${k}, in: ${k:+new}, k: ${k}." # k: old, in: new, k: old.
echo "x: ${x}, in: ${x:+new}, x: ${x}." # x: , in: , x: .
echo
echo ':? is error, assignment, substitution'
echo "k: ${k}, in: ${k:?err}, k: ${k}." # k: old, in: old, k: old.
echo "w: ${w}, in: ${w:?err}, w: ${w}." # error message sent to standard error & shell, whole line errs
