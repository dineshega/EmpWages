#!/bin/bash -x

#Welcome to Employee Wage Computation Program

echo "Welcome to Employee Problem"

IS_FULL_TIME=1
IS_PART_TIME=2
EMP_RATE_PER_HOUR=20
NO_OF_WORKING_DAYS=20
MAX_HRS_IN_MONTH=160

totalEmpHrs=0
totalWorkingDays=0

function getWorkingHours(){
	case $1 in
			$IS_FULL_TIME )
				empHrs=8;;
			$IS_PART_TIME )
				empHrs=4;;
			* )
				empHrs=0;;
	esac
	echo $empHrs
}


#for(( day=1; day<=$numofworkingDays; day++ ))
while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NO_OF_WORKING_DAYS ]]
do
		((totalWorkingDays++))
		empHrs=$( getWorkingHours $((RANDOM%3)) )		
		totalEmpHrs=$(($totalEmpHrs+$empHrs))
		#salary=$(($empRatePerHour*$empHrs))
		#totalSalary=$(($totalSalary+$salary))		
done

		totalSalary=$(($EMP_RATE_PER_HOUR*$totalEmpHrs))
		echo "totalSalary is: " $totalSalary 