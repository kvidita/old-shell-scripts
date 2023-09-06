#! /bin/bash

# to write a automated testing script
# verifying if the expected output matches the actual output

#Example: 
#INPUT :  1   |  EXPECTED_OUTPUT :  2  |  ACTUAL_OUTPUT :  2
#INPUT :  2   |  EXPECTED_OUTPUT :  3  |  ACTUAL_OUTPUT :  3
#INPUT :  0   |  EXPECTED_OUTPUT :  1  |  ACTUAL_OUTPUT :  1
#INPUT : -1   |  EXPECTED_OUTPUT :  0  |  ACTUAL_OUTPUT :  0
#INPUT : -3   |  EXPECTED_OUTPUT : -2  |  ACTUAL_OUTPUT : -2
 
#for 




function  vidita() {

TOTAL_TEST=0
SUCCESS_TEST=0

INPUT=$1
EXPECTED_OUTPUT=$2
ACTUAL_OUTPUT=$(increment.sh $INPUT) 

TOTAL_TEST=$(dc -e "$TOTAL_TEST 1 + p") 
if [ $EXPECTED_OUTPUT -eq $ACTUAL_OUTPUT ];then
	echo "for input being $INPUT the output is $ACTUAL_OUTPUT ... yes"
	SUCCESS_TEST=$(dc -e "$SUCCESS_TEST 1 + p") 
else 
	echo "for input being $INPUT the output is $ACTUAL_OUTPUT ... no"
fi

}

vidita 0 1

 
#
#
#
#
#INPUT=2
#EXPECTED_OUTPUT=3
#ACTUAL_OUTPUT=$(increment.sh $INPUT)
#
#TOTAL_TEST=$(dc -e "$TOTAL_TEST 1 + p") 
#if [ $EXPECTED_OUTPUT -eq $ACTUAL_OUTPUT ];then
#	echo "for input being $INPUT the output is $ACTUAL_OUTPUT ... yes"
#	SUCCESS_TEST=$(dc -e "$SUCCESS_TEST 1 + p") 
#else 
#	echo "for input being $INPUT the output is $ACTUAL_OUTPUT ... no"
#fi
#
#
#
#
#INPUT=0
#EXPECTED_OUTPUT=1
#ACTUAL_OUTPUT=$(increment.sh $INPUT)
#
#TOTAL_TEST=$(dc -e "$TOTAL_TEST 1 + p") 
#if [ $EXPECTED_OUTPUT -eq $ACTUAL_OUTPUT ];then
#	echo "for input being $INPUT the output is $ACTUAL_OUTPUT ... yes"
#	SUCCESS_TEST=$(dc -e "$SUCCESS_TEST 1 + p") 
#else 
#	echo "for input being $INPUT the output is $ACTUAL_OUTPUT ... no"
#fi
#
#
#
#INPUT=-1
#EXPECTED_OUTPUT=0
#ACTUAL_OUTPUT=$(increment.sh $INPUT)
#
#TOTAL_TEST=$(dc -e "$TOTAL_TEST 1 + p") 
#if [ $EXPECTED_OUTPUT -eq $ACTUAL_OUTPUT ];then
#	echo "for input being $INPUT the output is $ACTUAL_OUTPUT ... yes"
#	SUCCESS_TEST=$(dc -e "$SUCCESS_TEST 1 + p") 
#else 
#	echo "for input being $INPUT the output is $ACTUAL_OUTPUT ... no"
#fi
#
#
#
#INPUT=-3
#EXPECTED_OUTPUT=-2
#ACTUAL_OUTPUT=$(increment.sh $INPUT)
#
#TOTAL_TEST=$(dc -e "$TOTAL_TEST 1 + p") 
#if [ $EXPECTED_OUTPUT -eq $ACTUAL_OUTPUT ];then
#	echo "for input being $INPUT the output is $ACTUAL_OUTPUT ... yes"
#	SUCCESS_TEST=$(dc -e "$SUCCESS_TEST 1 + p") 
#else 
#	echo "for input being $INPUT the output is $ACTUAL_OUTPUT ... no"
#fi
#
#if [ $ACTUAL_OUTPUT -eq $EXPECTED_OUTPUT ];then
#	say " your all $TOTAL_TEST test cases met your expectations"
#else 
#	say "you passed $SUCCESS_TEST test cases out of total $TOTAL_TEST test cases"
#fi 
#
#ho "$SUCCESS_TES$($TOTAL_TEST test cases succeeded"
