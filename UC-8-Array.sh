#!/bin/bash -x

isPartTime=1
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
                                  $isPartTime )
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
         ((totalWorkkingDays++))
         getWorkHours
         totalEmpHr=$(($totalEmpHr+$empHrs))
         dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done

totalsalary=$(($totalEmpHr*$empRatePerHr))
echo $totalsalary
echo ${dailyWages[@]}
