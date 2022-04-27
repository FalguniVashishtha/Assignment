pocket=100
bet=1
numberOfWins=0
numberOfBets=0
while [ $pocket -gt 0 -a $pocket -lt 200 ] 
do
result=$(($(($RANDOM%10))%2))

if [ $result -eq 1 ]; then
	numberOfWins=$((numberOfWins+1))
	pocket=$((pocket+bet))
else
	pocket=$((pocket-bet))
fi
numberOfBets=$((numberOfBets+1))
done

echo "numberOfBets : $numberOfBets"
echo "numberOfWins : $numberOfWins"
