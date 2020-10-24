#!/bin/bash

echo " Welcome to Employee Wage Computation Program on master Branch"

#To check employee is present or absent

empPresent=1
isFullTime=1
Wage_Per_Hr=20
Full_Time_Hr=8
Part_Time_Hr=4
RandomCheck=`expr $((RANDOM%2))`

if [ $empPresent -eq $RandomCheck ]
then

   echo " Employee is Present"
   if [ $isFullTime -eq $((RANDOM%2)) ]  #checking Employee working part time or full time
   then
      FullTimeWagePerDay=$(($Wage_Per_Hr * $Full_Time_Hr))
      echo " Employee Wage Per Day(FullTime) ="$FullTimeWagePerDay
   else
      PartTimeWagePerDay=$(($Wage_Per_Hr * $Part_Time_Hr))
      echo " Employee Wage Per Day(PartTime) ="$PartTimeWagePerDay
   fi
else
   echo " Employee is Absent"
fi
