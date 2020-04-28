#!/bin/bash

for i in *.sh; do
  ls -l $i
done

count=0
for i in $(cat ~/.bash_profile); do
  count=$((count + 1))
  echo "Word $count ($i) contains $(echo -n $i | wc -c) characters"
done

