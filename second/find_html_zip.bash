#!/bin/bash

# 递归地查找文件夹中所有的HTML文件，并将它们压缩成zip文件
# 注意工作目录下不要有重名文件，否则zip会抛错停止压缩
find . -name '*.html' | xargs -0 zip -r output.zip