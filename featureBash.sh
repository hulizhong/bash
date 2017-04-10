#!/bin/bash

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>fun declare with function keyword.
function shCantUse()
{
    printf "run fun with bash shell.\n"
}
shCantUse

shCanUse()
{
    printf "run fun with bash shell.\n"
    #sh_fun.sh: 3: sh_fun.sh: Syntax error: "(" unexpected
}
shCanUse

