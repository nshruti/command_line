#!/bin/bash

list="add subtract multiply divide"
x=`echo $list | grep -wc $1`

if [ $x == 0 ] || [ $# != 3 ] ||  [ $1 == '-h' ]
then
echo
echo "############################################################################"
echo "# usage: ./operation.sh [add/subtract/multiply/divide] [number1] [number2] #"
echo "# example: ./operation.sh add 2 3 => 5                                     #"
echo "############################################################################"
echo
exit
fi 

# core logic begins here
function add(){
sum=`expr $1 + $2` 
echo $sum
}

function multiply(){
mul=`expr $1 \* $2` 
echo $mul
}

function subtract(){
sub=`expr $1 - $2` 
echo $sub
}

function divide(){
div=`expr $1 / $2` 
echo $div
}

# "operations" logic as per runtime parameter
if [ $1 == "add" ]
then
add $2 $3
elif [ $1 == "multiply" ]
then
multiply $2 $3
elif [ $1 == "subtract" ]
then
subtract $2 $3
elif [ $1 == "divide" ]
then
divide $2 $3
fi
