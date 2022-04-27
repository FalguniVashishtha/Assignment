num1=$(($(($(($RANDOM%10))%6))+1))
num2=$(($(($(($RANDOM%10))%6))+1))

echo "Random dice Number 1- $num1"
echo "Random dice Number 2- $num2"

echo "Sum - $((num1+num2))"
