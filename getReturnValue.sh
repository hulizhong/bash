#!/bin/sh


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
#bb=$(echo_ret)
bb=${echo_ret;}
echo_ret
cc=$?
echo $aa
echo $bb
echo $cc



############## $?只能返回0-255之间的数字。
returnValue()
{
    size=256  #### bash里面变量默认为全局
    return $size
}
returnValue
echo "returnValue", $?, $size

