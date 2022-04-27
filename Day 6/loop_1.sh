#read in one command-line argument
echo "Enter  a number : "
read a

#count from 0 to N

powerOfTwo=1; #the ith power of two

#repeat until i equals n

for((i=0;i<=$a;i++)); 
do
echo "$i  $powerOfTwo" # print out the power of two

powerOfTwo=$((2 * powerOfTwo)) #double to get the next one

done
