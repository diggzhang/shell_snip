#!/usr/bin/env bash
set -u
set -x

# 简介

## set 命令用来修改子 Shell 环境的运行参数，即定制环境。
## 如果命令行下不带任何参数，直接运行set，会显示所有的环境变量和 Shell 函数。

# set -u

## set -u就用来改变这种行为。脚本在头部加上它，遇到不存在的变量就会报错，并停止执行。
#echo $a
echo bar

# set -x
echo bar

# Bash 的错误处理
## 如果脚本里面有运行失败的命令（返回值非0），Bash 默认会继续执行后面的命令。

# set -e
set +e # close exit on error
command1
command2
set -e
## 使用好 +e 可以控制脚本失败情况，做到分级别失败，轻量失败可以继续执行。

# set -o pipefail
# 其他参数
# set 命令总结
# shopt 命令
