#!/bin/sh

read -p "Run test? (y/N): " yn
case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac

# extract abcXXX div-X from cpp_file
cpp_file=$1
abc=`sed -n 2,2p $cpp_file | sed -e 's/\(^.*\)/\L\1/'`
no=`sed -n 3,3p $cpp_file`
question=`sed -n 4,4p $cpp_file | sed -e 's/\(^.*\)/\U\1/'`


# Check whether test_directory exists
dir="/home/${USER}/atcoder-workspace/${abc}${no}"

if [ -e $dir ]; then
    echo "Exist"
else
    echo "Not Exist"
    # Download test_directory with atcoder_tools
    # https://github.com/kyuridenamida/atcoder-tools
    atcoder-tools gen ${abc}${no}
fi

# compile
g++ $cpp_file

# Run test
atcoder-tools test -e ./a.out -d ${dir}/${question}