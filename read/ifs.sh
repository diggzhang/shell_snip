#!/bin/bash
# read-ifs: read fields from a file

FILE=/etc/passwd

read -p "Enter a username > " user_name
file_info="$(grep "^$user_name:" $FILE)"

# https://unix.stackexchange.com/questions/109625/shell-scripting-z-and-n-options-with-if
if [ -n "$file_info" ]; then
  IFS=":" read user pw id gid name home shell <<< "$file_info"
  echo "User = '$user'"
  echo "UID = '$uid'"
  echo "GID = '$gid'"
  echo "Full Name= '$name'"
  echo "Home = '$home'"
  echo "Shell = '$shell'"
else
  echo "No such user '$user_name'"
fi
