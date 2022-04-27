echo "Enter a number : "
read N
harmonic=1;
#loop to apply the formula
#Hn = H1 + H2 + H3 ... + Hn-1 + Hn-1 + 1/n
i=2
one=1
for((i=2;i<=$N;i++))
do
	temp=$(echo "$one $i" | awk '{printf "%.2f \n", $1/$2}')
	echo $temp
	harmonic=$(echo "$harmonic $temp" | awk '{printf "%.2f \n", $1+$2}')
done
echo "Nth Harmonic Number = $harmonic"
