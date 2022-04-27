oneft=12;
one=1
temp=$(echo "$oneft $one" | awk '{printf "%.5f \n", $2/$1}')
result=$(echo "$temp 42" | awk '{printf "%.5f \n", $2*$1}')
echo "1ft = 12 in then 42 in = $result ft"

met1=$(echo "0.3048 60" | awk '{printf "%.5f \n", $2*$1}')
met2=$(echo "0.3048 40" | awk '{printf "%.5f \n", $2*$1}')
area=$(echo "$met1 $met2" | awk '{printf "%.5f \n", $2*$1}')
echo "60 feet x 40 feet in meters - $met1 x $met2"
echo "Area in meters - $area sq m"
areaacre=$(echo "$area 0.000247" | awk '{printf "%.5f \n", $1*$2}')
echo "Area in meters - $areaacre acre"

