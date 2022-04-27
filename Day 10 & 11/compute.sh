hput(){
eval hash"$1"='$2'
}
hget(){
eval echo '${hash'"$1"'#hash}'
}
echo "UC1 - "
echo "Enter 3 inputs"
read a
read b
read c

#declare -a dict
echo "UC2- "
hput result1 $((a+b*c))
echo `hget result1`
echo "UC3 - "
hput result2 $((a*b+c))
echo `hget result2`
echo "UC4- "
hput result3 $((c+a/b))
echo `hget result3`
echo "UC5 - "
hput result4 $((a%b+c))
echo `hget result4`

