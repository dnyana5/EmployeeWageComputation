#!/bin/bash -x

echo " Welcome to Employee Wage Computation Program on master Branch"

#To check employee is present or absent

empPresent=1
isFullTime=1
Wage_Per_Hr=20
Full_Time_Hr=8
Part_Time_Hr=4
#RandomCheck=`expr $((RANDOM%2))`

if [ $empPresent -eq  $((RANDOM%2)) ]
then
   echo " Employee is Present"
   RandomCheck=`expr $((RANDOM%2))`
         case $RandomCheck  in
                1) FullTimeWagePerDay=$(($Wage_Per_Hr * $Full_Time_Hr))
                        echo " Employee Wage Per Day(FullTime) ="$FullTimeWagePerDay;;
                0) PartTimeWagePerDay=$(($Wage_Per_Hr * $Part_Time_Hr))
                        echo " Employee Wage Per Day(PartTime) ="$PartTimeWagePerDay;;
        esac
else
   echo " Employee is Absent"
fi
