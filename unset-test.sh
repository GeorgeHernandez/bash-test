#!/bin/bash
# unset-test.sh

# unset variable
pet=Dog
echo "I have a $pet"
unset pet
echo "I have a $pet"

# unset function
function hello () {
    echo "Hello $USER. Today is $(date).";
}
hello
unset hello
hello 2> /dev/null # This will err but hide the error
hello              # This will err
