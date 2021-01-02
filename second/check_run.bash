#!/usr/bin/env bash
check() {
    echo "start run..."
    n=$(( RANDOM % 100 ))
    # 注意变量赋值不要写空格，否则就会出现 `command not found`
    cnt=0
    # n === 42 ? exit 1 : count++
    while [[ n -le 100 ]];
    do
    echo "n is now $n, cnt is $cnt"
    ((cnt++))
    echo "Everything went according to plan"
    if [[ n -eq 42 ]]; then
        echo "It run ${cnt} before something went wrong" > './error.log'
        >&2 echo "The error was using magic numbers"
        exit 1
    fi
    n=$(( RANDOM % 100 ))
    done
}
check
