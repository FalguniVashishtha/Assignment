echo "Enter a number: "
read number;
for((count=2;count<=$number;count++))
do
	i=2
	flag=0
	while test $i -le `expr $count / 2`
	do
	if test `expr $count % $i` -eq 0
	then
	flag=1
	fi

	i=`expr $i + 1`
	done
	if test $flag -eq 1
	then
	echo "The $count is Not Prime"
	else
	echo "The $count is Prime"
	fi
done
