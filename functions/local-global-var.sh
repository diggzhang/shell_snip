fn () {
  foo=1
  echo "fn: foo = $foo"
}

fn

echo "global: foo = $foo"

## 上面例子中，变量$foo是在函数fn内部声明的，函数体外也可以读取。

fn2 () {
    local foo2
    foo2=1
    echo "fn2: foo2 = $foo2"
}

fn2
echo "global: foo2 = $foo2"

