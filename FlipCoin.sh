#!/bin/bash

Hcount=0
Tcount=0

while [ $Hcount -le 21 ] | [ $Tcount -le 21 ]
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

if [ $Hcount -eq 21 ]
then
	echo "-----------------Head Wins 21 Times-------------"
	x=$(( $Hcount - $Tcount ))
	echo " Head Comes $x Times More than Tail"

elif [ $Tcount -eq 21 ]
then
   echo "-----------------Tail Wins 21 Times-------------"
	 x=$(( $Tcount - $Hcount ))
        echo " Tail Comes $x Times More than Head"

elif [ $Hcount -eq $Tcount ]
then
	echo "-------Tie-Then Continue-------"
	continue

fi

i=$(expr $i + 1)

done

echo -ne "\n *  Total Head Win Is $Hcount\n"
echo -ne "\n *  Total Tail Win Is $Tcount\n"
