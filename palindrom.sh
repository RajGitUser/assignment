#!/bin/bash
# Script: palindrome.sh
# Purpose: Check if a given string or number is a palindrome
# Author: Raj

# Check if argument is passed
if [ $# -eq 0 ]; then
    echo "Usage: $0 <string_or_number>"
    exit 1
fi

input=$1

# Reverse the string
reverse=$(echo "$input" | rev)

# Compare original with reverse
if [ "$input" == "$reverse" ]; then
    echo "$input → Palindrome ✅"
else
    echo "$input → Not a Palindrome ❌"
fi
