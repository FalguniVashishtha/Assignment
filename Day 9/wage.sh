#!/bin/bash
echo "Wage Computation ---------------------------------------------------- "
wagePerHour=20

echo "UC 1---------------------------------------------------- "
employeePresent=$(($RANDOM%2))
if [ $employeePresent -eq 1 ];then
    echo "Present"
    else 
    echo "Absent"
fi

echo "UC 2---------------------------------------------------- "
dailyWage=0;
if [ $employeePresent -eq 1 ]; then
    	dailyWage=$((wagePerHour * 8))
fi
echo "Daily Employee wage = $dailyWage"

echo "UC 3---------------------------------------------------- "
partTime=$(($RANDOM%2))
if [ $partTime -eq 1 ];then
	wagePerHour=8
	echo "Part time Employee"
    else 
        echo "Full time Employee"
fi
dailyWage=0;
if [ $employeePresent -eq 1 ]; then
    	dailyWage=$((wagePerHour * 8))
fi
echo "Daily Employee wage = $dailyWage"

echo "UC 5---------------------------------------------------- "
employeePresent=1
echo "Daily Employee monthly wage = $((wagePerHour*8*20))"

echo "UC6,7,8,9------------------------------------------------------ "

workingHourse=0;
workingDays=0;
totalWage=0;
while [ $workingHourse -lt 100 ] && [ $workingDays -lt 20 ]
do
        employeePresent=$(($RANDOM%2))
        hourPerDay=$(($RANDOM%9))
        dailyWage=0;
	if [ $employeePresent -eq 1 ]; then
		workingDays=$((workingDays + 1))
		workingHourse=$((workingHourse + hourPerDay))
	    	dailyWage=$((dailyWage + wagePerHour*hourPerDay))
	fi
	totalWage=$((totalWage + dailyWage))
done
echo "Total wage= $totalWage"
echo "Total workingDays= $workingDays"
echo "Total workingHourse= $workingHourse"
