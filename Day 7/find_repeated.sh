arr=()
for i in $(seq 1 100)
do

first_digit="${i:0:1}"
second_digit="${i:1:1}"

if [ $first_digit == $second_digit ]
then
arr+=($i)
fi

done
echo ${arr[@]}
