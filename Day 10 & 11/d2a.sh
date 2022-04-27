declare -a myDict

myDict[0]='A'
myDict[1]='B'
myDict[2]='C'

array=()

for key in "${!myDict[@]}"; do
array[$key]=${myDict[key]}
done
echo ${array[@]}
