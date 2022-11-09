#!/bin/bash -x

isParTime=1
isFullTime=2
empRatePerHr=20
numofWorkingDays=20

totalSalary=0

for (( day=1; day<=$numofWorkingDays; day++ ))
do
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

         salary=$(($empHrs*$empRatePerHr))
         totalSalary=$(($salary+$totalSalary))
done
