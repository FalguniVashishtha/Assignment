echo "Enter a number to get prime factors"
read n;
res=1;
arr=();
echo "All prime factors of $n are:"

for((i=2;i<=n;i++));
do

 if test `expr $n % $i` -eq 0
 then
 isPrime=1;

  for((j=2;j<=i/2;j++));
  do
   if test `expr $i % $j` -eq 0
   then
    isPrime=0;
    break;
   fi

  done

  if test `expr $isPrime` -eq 1
  then
   echo $i;
  fi

 fi
done
