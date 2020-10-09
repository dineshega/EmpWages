#!/bin/bash -x

#Welcome to Employee Wage Computation Program

echo "Welcome to Employee Problem"

isFullTime=1
randomCheck=$((RANDOM%2))
if [ $randomCheck -eq $isPresent ]
then
	empRatePerHour=20
	empHrs=8
	salary=$(($empRatePerHour*$empHrs))
else
	salary=0
fi

echo "your one day salary : $salary"