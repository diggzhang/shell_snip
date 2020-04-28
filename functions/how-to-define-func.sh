# 第一种
fn() {
  # codes
  echo "Hello World"
}

# 第二种
function fn2() {
  # codes
  echo "Func2"
}

fn

today() {
  echo -n "Today's date is: "
  date +"%A, %B %-d, %Y"
}

today

# 查看当前 Shell 已经定义的所有函数，可以使用declare命令。
declare -f
# 查看单个函数的定义
declare -f functionName

