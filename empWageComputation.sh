#!/bin/bash

echo "Welcome to Employee Wage Computation Program on master Branch"

#To check employee is present or absent
empPresent=1
RandomCheck=`expr $((RANDOM%2))`

if [ $empPresent -eq $RandomCheck ]
then
   echo "Employee is Present"
else
   echo "Employee is Absent"
fi
