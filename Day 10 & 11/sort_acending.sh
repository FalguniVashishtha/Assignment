arr=(5 2 7 1 3 4)

sorted=($(echo ${arr[@]} | tr " " "\n" | sort ))
echo ${sorted[@]}
