#! /bin/bash

function generate_random_no(){
	local	RANDOM_NUM=$(jot -r 1 1 5)
	return $RANDOM_NUM
}


function compare_2_num(){
	local	NUM1=$1
	local	NUM2=$2
	[ $NUM1 -eq $NUM2 ]
}

function main(){
	generate_random_no 
	local RANDOM_NUM=$?
	input 3 $RANDOM_NUM
}


function input(){
	local CHANCES=$1
	local ARBITRARY_NO=$2

	while [ $CHANCES -gt 0 ];
	do

		CHANCES=$(dc -e "$CHANCES _1 + p")
		read -p "enter a number between 1-5: " PLAYER_NO
		RESULT=$(compare_2_num $ARBITRARY_NO $PLAYER_NO)
		if [ $RESULT -eq 0 ];then  
			echo "You won..!!!"
			return 
		fi

	done 
	echo "You lost...!!"
}

main




#echo "Guess a number between 1 to 5"
#read -p "enter a number:  " PLAYER_NO
#while [ $CHANCES -gt 0 ]
#do
#	echo "You have $CHANCES chances..!!"
#	CHANCES=$(dc -e "$CHANCES _1 + p")
#read -p "enter a number:  " PLAYER_NUM
#if [ $ARBITRARY_NO -eq $PLAYER_NUM ];
#then
#	echo "you won!!"
#	exit
#fi
#done 


#echo "you lost!!"


