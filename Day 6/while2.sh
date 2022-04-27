#read in one command-line argument
echo "Enter  a number betwwen 1-100: "
read num
mid=50;
left=1;
right=100;
while [ $left -lt $right ]
do
echo "if the number is less then equal to $mid(type 1) or greater(type 2)"
read input
if [ $input -eq 1 ]; then
	right=$mid
else
	left=$((mid+1))
fi
mid=$(((left+right)/2));
done

echo "Magic Number is $left"
