echo "Enter 3 numbers to add"
read a;
read b;
read c;
sum=0;

arr=($a $b $c);
sum=$((arr[0] + arr[1] + arr[2]))
echo $sum;
