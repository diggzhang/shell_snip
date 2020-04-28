#!/bin/bash
# test.sh

function alice {
  echo "alice: $@"
  echo "$0: $1 $2 $3 "
}

alice in wonderland

