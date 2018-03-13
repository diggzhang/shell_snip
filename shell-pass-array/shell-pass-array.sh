#!/bin/bash

pass_array_arg_to_function() {
  local arr=("$@")

  for elem in "${arr[@]}";
  do
      echo "$elem"
  done
}

declare -a elem_arr=(
  "elem01"
  "elem02"
  "elem03"
  "elem04"
  "elem05"
)

pass_array_arg_to_function "${elem_arr[@]}"
