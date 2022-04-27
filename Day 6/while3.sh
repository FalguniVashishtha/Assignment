headWins=0
tailWins=0
while [ $headWins -le 11 -a $tailWins -le 11 ]
do
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
					echo "Winner($headWins time) : Head - with diff $((countHead-countTail))"
					headWins=$((headWins+1))
				else
					echo "Winner($tailWins time) : Tail - with diff $((countTail-countHead))"
					tailWins=$((tailWins+1))
				fi
			else
				echo "Diff is less than 2 No Clear Winner"
			fi
		fi
	done
done


