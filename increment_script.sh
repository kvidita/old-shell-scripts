#! /bin/bash

INPUT=$1
EXPECTED=$2

EXIT_CODE=0
RESULT="successful"

ACTUAL=$(increment.sh $INPUT) 

if [ $ACTUAL -ne $EXPECTED ];
then
	RESULT="unsuccessful"
	EXIT_CODE=1
fi

echo "asserting ./increment_script.sh $INPUT is equal to $EXPECTED ....$RESULT"
exit $EXIT_CODE 

