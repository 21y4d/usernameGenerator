#!/bin/bash
#by 21y4d

if (("$#" != 2)); then
    echo -e "\033[0;31mUsage: $0 <First Name> <Last Name>"
    exit 1
fi

firstname=$(echo $1 | tr '[:upper:]' '[:lower:]')
lastname=$(echo $2 | tr '[:upper:]' '[:lower:]')

echo "${firstname}" >"$firstname".txt
echo "${lastname}" >>"$firstname".txt

#firstname last name
echo "${firstname}${lastname}" >>"$firstname".txt
echo "${firstname}.${lastname}" >>"$firstname".txt
echo "${firstname:0:1}.${lastname}" >>"$firstname".txt
echo "${firstname:0:1}${lastname}" >>"$firstname".txt
echo "${firstname}${lastname:0:1}" >>"$firstname".txt

#lastname firstname
echo "${lastname}${firstname}" >>"$firstname".txt
echo "${lastname}.${firstname}" >>"$firstname".txt
echo "${lastname:0:1}.${firstname}" >>"$firstname".txt
echo "${lastname:0:1}${firstname}" >>"$firstname".txt
echo "${lastname}${firstname:0:1}" >>"$firstname".txt

echo -e "\033[0;32mWordlist saved as ${firstname}.txt"
echo -e "\033[0m"
