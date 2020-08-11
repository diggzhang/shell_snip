#!/bin/bash

if test $USER = "foo"; then
  echo "Hello foo."
else
  echo "You are not foo."
fi

if test $USER = "xingze"; then
  echo "Hello xingze."
else
  echo "You are not xingze."
fi


if true
then
  echo 'hello world'
fi

if false
then
  echo 'it is false' # 本行不会执行
fi
