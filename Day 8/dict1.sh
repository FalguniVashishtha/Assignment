declare -A dict
dict[1]=0;
dict[2]=0;
dict[3]=0;
dict[4]=0;
dict[5]=0;
dict[6]=0;
#echo "${dict[$num1]}"
stopLoop=0;
while [ $stopLoop -eq 0 ]
do
	num1=$(($(($(($RANDOM%10))%6))+1))
	echo "Dice Number : $num1"
	temp1=${dict[$num1]}
	
	echo "number $num1 : count $((temp1 + 1))"
	dict[$num1]=$((temp1 + 1));
	temp=${dict[$num1]}
	if [ $temp -eq 10 ]; then
	stopLoop=1
	fi
done

max=${dict[1]}
maxKey=1
if [ ${dict[2]} -gt $max ]; then
 max=${dict[2]}
 maxKey=2
fi
if [ ${dict[3]} -gt $max ]; then
 max=${dict[3]}
 maxKey=3
fi
if [ ${dict[4]} -gt $max ]; then
 max=${dict[4]}
 maxKey=4
fi
if [ ${dict[5]} -gt $max ]; then
 max=${dict[5]}
 maxKey=5
fi
if [ ${dict[6]} -gt $max ]; then
 max=${dict[6]}
 maxKey=6
fi
echo "$maxKey occurred maximum for $max times"

min=${dict[1]}
minKey=1
if [ ${dict[2]} -lt $min ]; then
 min=${dict[2]}
 minKey=2
fi
if [ ${dict[3]} -lt $min ]; then
 min=${dict[3]}
 minKey=3
fi
if [ ${dict[4]} -lt $min ]; then
 min=${dict[4]}
 minKey=4
fi
if [ ${dict[5]} -lt $min ]; then
 min=${dict[5]}
 minKey=5
fi
if [ ${dict[6]} -lt $min ]; then
 min=${dict[6]}
 minKey=6
fi
echo "$minKey occurred minimum for $min times"
