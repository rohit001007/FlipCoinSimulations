#!/bin/bash

Hcount=0
Tcount=0

for((i=0;i<21;i++))
do
	x1=$(expr $RANDOM % 10)
	x2=$(expr $x1 % 2)


	echo "Coin Tossed $i Times"
	if [ $x2 -eq 0 ]
	then
		#echo -ne "Head \n"
		Hcount=$(expr $Hcount + 1)

	elif [ $x2 -eq 1 ]
        then
             #echo -ne "Tail \n"
	  Tcount=$(expr $Tcount + 1)
fi
done

echo -ne "\n * Head Comes $Hcount Times\n"
echo -ne "\n * Tail Comes $Tcount Times\n"

