#!/bin/bash


return_ret()
{
    return 1
}

echo_ret()
{
    echo 3
}

return_ret
aa=$?
bb=$(echo_ret)
echo_ret
cc=$?
echo $aa
echo $bb
echo $cc
