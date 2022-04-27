s1=99999
s2=99999

arr=()
for((i=0;i<10;i++))
do
r=$(( $RANDOM % 900 + 100));
arr[$i]=$r;
echo $r;

if [ $s1 -gt $r ]
then
s2=$s1
s1=$r
elif [ \( $s2 -gt $r \) -a \( $s1 -ne $r \) ]
then
s2=$r
fi

done
echo ${arr[@]}
echo "Second smallest $s2"

#Now we sort array

sorted=($(echo ${arr[@]} | tr " " "\n" | sort ))
echo "Second smallest number in array is ${arr[1]}"
echo "Second largest number in array is ${arr[8]}"

