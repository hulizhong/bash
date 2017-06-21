#!/bin/bash


function flow()
{
    #########################if else
    a=1
    b=2
    if [ $a -eq $b ]
    then
        echo $a "==" $b
    elif [ $a -gt $b ]; then
        echo $a ">" $b
    else
        echo $a "<" $b
    fi

    ################################ for 
    #for ((i=0; i<5; i++))
    #for (( i=0; i<5; i++ ))
    for i in 0 1 2 3 4 #只能空格为间隔，加,则会解释成数据
    do
        echo 'hello', $i
    done

    ######################while
    #while(($a<=3)) ##cant use -le
    while [ $a -le 3 ]
    do
        echo $a
        let "a++"
    done

    process="."
    #while [ true ]
    for ((;;))
    do
        echo -e "$process\c"
        sleep 0.051
    done

    #######还有util
    ##################case in
}

function value()
{
    a=0
    echo $a, ${a}hello
    a=100
    echo $a, ${a}hello
    echo $a+1
    echo `expr $a + 1`
    unset a
    echo $a, ${a}hello
    

    echo "hello" "china"
    str="hello china"
    echo ${#str}

    string="runoob is a great company"
    echo `expr index "$string" u`
    
    array=(1 1 2 3 5 8)
    echo ${array[3]}

}

function print()
{
    echo -e "Hu\c"
    echo "Lizhong"

    printf "%10s %8s %4s\n" "姓名" "性别" "体重kg"  
    printf "%-10s %-8s %-4.2f\n" "郭靖" "男" 66.1234 
    printf "%-10s %-8s %-4.2f\n" "杨过" "男" 48.6543 
    printf "%-10s %-8s %-4.2f\n" "郭芙" "女" 47.9876 
}

function experience()
{
    ####################### usage ""x
    if [ X"$x" = X"0" ]
    then
        echo 'str eq with 0'
    else
        echo 'str not eq with 0'
    fi
}

########测试$* $@的使用方法，一种是加双引号、一种是不加。
#function showDollarVar()
showDollarVar()
{
    echo '-------------$*'
    for arg in $*
    do
        echo $arg
    done
    echo '-------------"$*"'
    for arg in "$*"
    do
        echo $arg
    done

    echo '-------------$@'
    for arg in $@
    do
        echo $arg
    done
    echo '-------------"$@"'
    for arg in "$@"
    do
        echo $arg
    done
}
showDollarVar "hua jiang hu" zhi

#value
#print
#flow
#experience

