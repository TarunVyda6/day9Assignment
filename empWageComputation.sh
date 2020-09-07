#! /bin/bash

#welcome to emp wage computation

attendenceStatus=$(( RANDOM%2 ))

if (( $attendenceStatus == 1 ))
then
	echo "employee is present"
else
	echo "employee is absent"
fi


#constants

wagePerHour=20
fullDayHour=8
isFullTime=0
isPartTime=1
workingDaysPerMonth=20
workingHoursPerMonth=100

echo "if employee is full time then press 0"
echo "if employee is part time then press 1"

read choice

case $choice in
	0)	dailyEmployeeWage=$(( $wagePerHour*$fullDayHour ))
		timeHour=$fullDayHour
		;;
	1)	timeHour=$(( $fullDayHour/2 ))
		dailyEmployeeWage=$(( $wagePerHour*$timeHour ))
		;;
	*)	echo "invalid choice"

esac
day=0
hour=0
totalEmployeeWage=0
while(( $day<$workingDaysPerMonth && $hour<$workingHoursPerMonth ))
do
	if(( $hour >= 96 ))
	then
		totalEmployeeWage=$(( $totalEmployeeWage+80 ))
	else
		totalEmployeeWage=$(( $totalEmployeeWage+$dailyEmployeeWage ))
	fi
	hour=$(( $hour+$timeHour ))
	day=$(( $day+1 ))
done

echo "total employee wage is : "$totalEmployeeWage
