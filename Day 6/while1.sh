#read in one command-line argument
echo "Enter  a number : "
read a
i=0

#count from 0 to N

powerOfTwo=1; #the ith power of two

#repeat until i equals n

while [ $i -le $a -a $powerOfTwo -le 256 ] 
do
echo "$i  $powerOfTwo" # print out the power of two

powerOfTwo=$((2 * powerOfTwo)) #double to get the next one

i=$((i + 1));
done
