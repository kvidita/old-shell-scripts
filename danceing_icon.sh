#! /bin/zsh


for repeat in {1..5}
do
	clear
	sed -n 1,3p dancing_man
	sleep 0.3

	clear
	sed -n 4,6p dancing_man
	sleep 0.3

	clear
	sed -n 7,9p dancing_man
	sleep 0.3

	clear
	sed -n 10,12p dancing_man
	sleep 0.3

done
