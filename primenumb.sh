#!/bin/bash
# Script: prime_check.sh
# Purpose: Check if a number is prime
# Author: Raj

# Check if argument is passed
if [ $# -eq 0 ]; then
    echo "Usage: $0 <number>"
    exit 1
fi

num=$1

# Handle numbers less than 2
if [ $num -lt 2 ]; then
    echo "$num is NOT a prime number ❌"
    exit 0
fi

# Assume prime
is_prime=1  

# Loop to check divisibility
for ((i=2; i*i<=num; i++))
do
    if (( num % i == 0 )); then
        is_prime=0
        break
    fi
done

# Print result
if [ $is_prime -eq 1 ]; then
    echo "$num is a Prime number ✅"
else
    echo "$num is NOT a Prime number ❌"
fi
