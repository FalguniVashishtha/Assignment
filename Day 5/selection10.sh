echo "Enter single digit week number (Sunday-0,Monday-1) : "
read num

case "$num" in
   0) echo "Sunday" 
   ;;
   1) echo "Monday" 
   ;;
   2) echo "Tuesday" 
   ;;
   3) echo "Wednesday" 
   ;;
   4) echo "Thrusday" 
   ;;
   5) echo "Friday" 
   ;;
   6) echo "Saturday" 
   ;;
esac
