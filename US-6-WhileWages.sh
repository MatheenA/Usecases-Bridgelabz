#!/bin/bash -x

isParTime=1
isFullTime=2
empRatePerHr=20
numOfWorkingDays=20
maxRateInMonth=100

totalEmpHr=0
totalWorkingDays=0

while [[ $totalEmpHr -lt $maxRateInMonth && $totalworkingDays -lt $numOfWorkingDays ]]
do
            ((totalWorkingDays++))
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

             totalEmpHr=$(($totalEmpHr+$empHrs))
done
tptalsalary=$(($totalEmpHr*$empRatePerHr))
echo $totalsalary
