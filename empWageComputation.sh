#! /bin/bash

#welcome to emp wage computation

attendenceStatus=$(( RANDOM%2 ))

if (( $attendenceStatus == 1 ))
then
	echo "employee is present"
else
	echo "employee is absent"
fi
