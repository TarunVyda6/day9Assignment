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

dailyEmployeeWage=$(( $wagePerHour*$fullDayHour ))

echo "daily employee wage is : "$dailyEmployeeWage


partTimeHour=$(( $fullDayHour/2 ))

dailyEmployeeWage=$(( $wagePerHour*$partTimeHour ))

echo "daily employee wage for part time is : "$dailyEmployeeWage
