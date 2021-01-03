# missing-semester课程的课后练习

## Course overview + the shell

### 要求：练习 mkdir,cd,>,echo,>>
### 2种执行方式[练习代码]((./first.sh))

* 在 `bash` 中按行输入执行
* 执行`source ./path-to/first.sh`文件

## Shell tools && Scripts

### 题目要求

1. 阅读`[man ls]`然后使用ls 命令进行如下操作：

    * 所有文件（包括隐藏文件）
    * 文件打印以人类可以理解的格式输出 (例如，使用454M 而不是 454279954)
    * 文件以最近访问顺序排序
    * 以彩色文本显示输出结果

    > ls -AGulht

2. 编写两个bash函数 marco 和 polo 执行下面的操作

    * [macro.bash](./second/macro.bash); [polo.bash](./second/polo.bash)
    * 每当你执行 marco 时，当前的工作目录应当以某种形式保存，当执行 polo 时，无论现在处在什么目录下，都应当 cd 回到当时执行 marco 的目录
    * 执行 `source path-to/macro.bash` && `source path-to/polo.bash`

3. 编写一段bash脚本，运行如下的脚本直到它出错，将它的标准输出和标准错误流记录到文件，并在最后输出所有内容。 加分项：报告脚本在失败前共运行了多少次

    * [练习](./scond/check_run.bash)
    * 执行： `source path-to/check_run.bash`

    ```bash
    #!/usr/bin/env bash

    n=$(( RANDOM % 100 ))

    if [[ n -eq 42 ]]; then
        echo "Something went wrong"
        >&2 echo "The error was using magic numbers"
        exit 1
    fi

    echo "Everything went according to plan"
    ```

4. 编写一个命令，它可以递归地查找文件夹中所有的HTML文件，并将它们压缩成zip文件。注意，即使文件名中包含空格，您的命令也应该能够正确执行（提示：find命令查看 xargs的参数-d）

> find . -name '*.html' | xargs -0 zip -r output.zip

5. (进阶) 编写一个命令或脚本递归的查找文件夹中最近使用的文件。更通用的做法，你可以按照最近的使用时间列出文件吗？

> find . ctime 10

### 直接执行文件 or source 执行脚本文件
