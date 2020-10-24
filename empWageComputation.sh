#!/bin/bash

echo " Welcome to Employee Wage Computation Program on master Branch"

#To check employee is present or absent

empPresent=1
isFullTime=1
Wage_Per_Hr=20
Full_Time_Hr=8
Part_Time_Hr=4
WorkingDaysPerMonth=20

if [ $empPresent -eq  $((RANDOM%2)) ]
then
   echo " Employee is Present"
   RandomCheck=`expr $((RANDOM%2))`
         case $RandomCheck  in
                1)W_F=$((WorkingDaysPerMonth * Wage_Per_Hr * Full_Time_Hr ))
                        echo " Employee Wage Per Month(FullTime) ="$W_F;;
                0)W_P=$((WorkingDaysPerMonth * Wage_Per_Hr * Part_Time_Hr ))
                        echo " Employee Wage Per Month(PartTime) ="$W_P;;
        esac
else
   echo " Employee is Absent"
fi

