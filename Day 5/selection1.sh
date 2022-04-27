echo "Enter 1st 3 digit number : "
read one
echo "Enter 2nd 3 digit number : "
read two
echo "Enter 3rd 3 digit number : "
read three
echo "Enter 4th 3 digit number : "
read four
echo "Enter 5th 3 digit number : "
read five

max=$one
if [ $two -gt $max ]; then
 max=$two
fi
if [ $three -gt $max ]; then
 max=$three
fi
if [ $four -gt $max ]; then
 max=$four
fi
if [ $five -gt $max ]; then
 max=$five
fi
echo "Max is $max"

min=$one
if [ $two -lt $min ]; then
 min=$two
fi
if [ $three -lt $min ]; then
 min=$three
fi
if [ $four -lt $min ]; then
 min=$four
fi
if [ $five -lt $min ]; then
 min=$five
fi
echo "Min is $min"
