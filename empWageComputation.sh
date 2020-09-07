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

echo "if employee is full time then press 0"
echo "if employee is part time then press 1"

read choice

case $choice in
	0)	dailyEmployeeWage=$(( $wagePerHour*$fullDayHour ))
		echo "daily employee wage is : "$dailyEmployeeWage
		;;
	1)	partTimeHour=$(( $fullDayHour/2 ))
		dailyEmployeeWage=$(( $wagePerHour*$partTimeHour ))
		echo "daily employee wage for part time is : "$dailyEmployeeWage
		;;
	*)	echo "invalid choice"

esac
