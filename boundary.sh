#! /bin/bash

function boundary() {

	for COLUMN in {1..8} 
	do 
		for ROW in {1..8}
		do 
			if [ $ROW -eq 1 -o $ROW -eq 8 ] || [ $COLUMN -eq 1 -o $COLUMN -eq 8 ] ; then
				echo -n "* "
			else 
				echo -n "  "
			fi
		done
		echo
	done 
} 

boundary
