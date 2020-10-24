#!/bin/bash

echo " Welcome to Employee Wage Computation Program on master Branch"


empPresent=1
Full_Time_Hr=8
Part_Time_Hr=4
EMPLOYEE_RATE_PER_HOUR=20
MAX_NO_OF_DAYS=20
MAX_NO_OF_HOURS=100

#Variable
total_working_hours=0
totalWorkingDays=0
totalWage=0
workDonePerDay=0
#function declaration
getWorkDonePerDay() {
        case $1 in
                0) workDonePerDay=$Part_Time_Hr;;
                1) workDonePerDay=$Full_Time_Hr;;
                *) workDonePerDay=0;;
        esac
        echo $workDonePerDay
}

      if [ $empPresent -eq $((RANDOM%2)) ]
      then
            echo " Employee is Present"
while [[ $totalWorkingDays -lt $MAX_NO_OF_DAYS && $total_working_hours -lt $MAX_NO_OF_HOURS ]]
do
        ((totalWorkingDays++));
        workDonePerDay=$(getWorkDonePerDay $((RANDOM%2)) );
        total_working_hours=$((total_working_hours+workDonePerDay));
        tempWage=$((workDonePerDay*EMPLOYEE_RATE_PER_HOUR));
        totalWage=$((tempWage+totalWage));
done
echo "total working hours - " $totalWage
echo "total days worked - " $totalWorkingDays
echo "total hours done - " $total_working_hours


else
echo " Employee is Absent"
fi
