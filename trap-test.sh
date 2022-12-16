#!/bin/bash
# trap-test.sh
trap "echo The script is terminated; exit" SIGINT

while true
do
    echo Test
    sleep 1
done
