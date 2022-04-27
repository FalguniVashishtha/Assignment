#!/bin/bash
echo "UC1 ---------------------------------------------------- "
FLIP=$(($(($RANDOM%10))%2))
if [ $FLIP -eq 1 ];then
    echo "heads"
else
    echo "tails"
fi

echo "UC 2---------------------------------------------------- "
a=0
countHead=0;
countTail=0;
until [ $a -gt 20 ]
do
	FLIP=$(($(($RANDOM%10))%2))
	if [ $FLIP -eq 1 ];then
		countHead=`expr $countHead + 1`
	    echo "heads"
	else
		countTail=`expr $countTail + 1`
	    echo "tails"
	fi
     
    # increment the value
    a=`expr $a + 1`
done
echo "Number of heads - $countHead"
echo "Number of tails - $countTail"

echo "UC 3---------------------------------------------------- "
countHead=0;
countTail=0;
while [ $countHead -le 21 ] && [ $countTail -le 21 ]
do
  FLIP=$(($(($RANDOM%10))%2))
	if [ $FLIP -eq 1 ];then
		countHead=`expr $countHead + 1`
	    echo "heads"
	else
		countTail=`expr $countTail + 1`
	    echo "tails"
	fi
done
if [ $countHead -eq $countTail ]; then
	echo "Tie";
else
	if [ $countHead -gt $countTail ];  then
		echo "Winner : Head - $((countHead-countTail))"
	else
		echo "Winner : Tail - $((countTail-countHead))"
	fi
fi

echo "UC 4---------------------------------------------------- "
countHead=0;
countTail=0;
stopLoop=0;
diffr=0;
while [ $stopLoop -ne 1 ]
do
	countHead=0;
	countTail=0;
	  while [ $countHead -le 21 ] && [ $countTail -le 21 ]
	do
	  FLIP=$(($(($RANDOM%10))%2))
		if [ $FLIP -eq 1 ];then
			countHead=`expr $countHead + 1`
		    echo "heads"
		else
			countTail=`expr $countTail + 1`
		    echo "tails"
		fi
	done
	if [ $countHead -eq $countTail ]; then
		echo "Tie No Clear Winner";
	else
		if [ $countHead -gt $countTail ];  then
			diffr=`expr $countHead - $countTail`
		else
			diffr=`expr $countTail - $countHead`
		fi
		echo "diff is $diffr"
		if [ $diffr -ge 2 ]; then
			stopLoop=`expr $stopLoop + 1`
			if [ $countHead -gt $countTail ];  then
				echo "Winner : Head - $((countHead-countTail))"
			else
				echo "Winner : Tail - $((countTail-countHead))"
			fi
		else
			echo "Diff is less than 2 No Clear Winner"
		fi
	fi
done
