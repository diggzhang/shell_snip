#!/bin/bash

trap 'rm -f "$TMPFILE"' EXIT

TMPFILE=$(mktemp) || exit 1
ls /etc > $TMPFILE
if grep -qi "kernel" $TMPFILE; then
  echo 'find'
fi
cat "${TMPFILE}"


# use trap with flow of functions
# 如果trap需要触发多条命令，可以封装一个 Bash 函数。
function egress {
  command1
  command2
  command3
}

trap egress EXIT

