#!/bin/bash -x

isParTime=1
isFullTime=2
maxRateInMonth=100
empRatePerHr=20
numOfWorkingDays=20

totalEmpHr=0
totalWorkingDays=0

function getWorkHours()
{
        randomCheck=$((RANDOM%3))
        case $randomCheck in
                                 $isParTime )
                                        empHrs=4
                                 ;;
                                 $isFullTime )
                                        empHrs=8
                                 ;;
                                 *)
                                        empHrs=0
                                 ;;
        esac
}
while [[ $totalEmpHr -lt $maxRateInMonth &&
         $totalWorkingDays -lt $numOfWorkingDays ]]
do
         ((totalWorkingDays++))
         getWorkHours
         totalEmpHr=$(($totalEmpHr+$empHrs))
done

totalsalary=$(($totalEmpHr*$empRatePerHr))
echo $totalsalary

