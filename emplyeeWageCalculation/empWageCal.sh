#! /bin/bash 
attend=$((RANDOM%2))
if [ $attend -eq 0 ]
then
	echo "Employee is Absent";
else
	echo "Employee is Present";
	wagePerHr=20;
	workHr=8;
	partTimeHr=8;
	workingDays=20;
	monthlyWage=0;
	totalWorkedHR=0;
fi