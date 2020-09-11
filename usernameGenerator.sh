#!/bin/bash
#by 21y4d

if (("$#" != 2)); then
    echo -e "\033[0;31mUsage: $0 <First Name> <Last Name>"
    exit 1
fi

firstname=$(echo $1 | tr '[:upper:]' '[:lower:]')
lastname=$(echo $2 | tr '[:upper:]' '[:lower:]')

echo "${firstname}" >"$firstname"_usernames.txt
echo "${lastname}" >>"$firstname"_usernames.txt

#firstname last name
echo "${firstname}${lastname}" >>"$firstname"_usernames.txt
echo "${firstname}.${lastname}" >>"$firstname"_usernames.txt
echo "${firstname:0:1}.${lastname}" >>"$firstname"_usernames.txt
echo "${firstname:0:1}${lastname}" >>"$firstname"_usernames.txt
echo "${firstname}${lastname:0:1}" >>"$firstname"_usernames.txt

#lastname firstname
echo "${lastname}${firstname}" >>"$firstname"_usernames.txt
echo "${lastname}.${firstname}" >>"$firstname"_usernames.txt
echo "${lastname:0:1}.${firstname}" >>"$firstname"_usernames.txt
echo "${lastname:0:1}${firstname}" >>"$firstname"_usernames.txt
echo "${lastname}${firstname:0:1}" >>"$firstname"_usernames.txt

echo -e "\033[0;32mWordlist saved as ${firstname}_usernames.txt"
echo -e "\033[0m"
