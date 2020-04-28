#! /bin/bash

# Wrong Way
dir_name=/path/not/exist
cd $dir_name
rm *

#上面脚本中，如果目录$dir_name不存在，cd $dir_name命令就会执行失败。这时，就不会改变当前目录，脚本会继续执行下去，导致rm *命令删光当前目录的文件。

# Right Way
[[ -d $dir_name  ]] && cd $dir_name && rm *
# Display which file will delete
[[ -d $dir_name  ]] && cd $dir_name && echo rm *

