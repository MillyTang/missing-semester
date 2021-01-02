#!/bin/sh
# 生成一个文件夹用来练习
mkdir tmp
cd tmp/
# 练习 mkdir & cd
mkdir missing
cd missing/
# 生成文件，练习 touch
touch semester
# 练习>重定向输入到文件中
echo '#!/bin/sh' > semester
# >> 追加第二行内容
echo 'curl --head --silent https://missing.csail.mit.edu' >> semester
vim semester
# :q退出