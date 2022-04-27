echo "Enter single digit week number (Sunday-0,Monday-1) :"
read num
if [ $num -eq 0 ]
then 
    echo "Sunday"
elif [ $num -eq 1 ]
then
    echo "Monday"
    elif [ $num -eq 2 ]
then
    echo "Tuesday"
    elif [ $num -eq 3 ]
then
    echo "Wednesday"
    elif [ $num -eq 4 ]
then
    echo "Thrusday"
    elif [ $num -eq 5 ]
then
    echo "Friday"
    elif [ $num -eq 6 ]
then
    echo "Saturday"
else
    echo "All of the specified args are different"
fi
