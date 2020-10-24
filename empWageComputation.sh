#!/bin/bash

echo " Welcome to Employee Wage Computation Program on master Branch"

#To check employee is present or absent

empPresent=1

Wage_Per_Hr=20
Full_Day_Hr=8
RandomCheck=`expr $((RANDOM%2))`

if [ $empPresent -eq $RandomCheck ]
then

   echo " Employee is Present"
   #For Calculating Daily Employee Wage
   Daily_Wage=$(($Wage_Per_Hr * $Full_Day_Hr))
   echo " Employee Wage Per Day ="$Daily_Wage
else
   echo " Employee is Absent"
fi
