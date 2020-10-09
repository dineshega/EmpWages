#!/bin/bash -x

#Welcome to Employee Wage Computation Program

echo "Welcome to Employee Problem"

isFullTime=1
isPartTime=2
empRatePerHour=20
randomCheck=$((RANDOM%3))
if [ $randomCheck -eq $isFullTime ]
then
	empHrs=8
	
elif [ $randomCheck -eq $isPartTime ]
then
	empHrs=4
	
else
	empHrs=0
fi
salary=$(($empRatePerHour*$empHrs))
echo "your one day salary : $salary"