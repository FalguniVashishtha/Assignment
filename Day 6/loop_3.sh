echo "Enter a number: "
read number
i=2
flag=0
for((i=2;i<=$number/2;i++))
do
if test `expr $number % $i` -eq 0
then
flag=1
fi

done
if test $flag -eq 1
then
echo "The number is Not Prime"
else
echo "The number is Prime"
fi
