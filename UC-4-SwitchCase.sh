#!/bin/bash -x

isParTime=1
isFullTime=2
empRatePerHr=20
randomCheck=$((RANDOM%3))

case $randomCheck in
                        $isFullTime )
                                 empHrs=8
                        ;;
                        $isParTime )
                                 empHrs=4
                        ;;
                        *)
                                  empHrs=0
                        ;;
esac

salary=$(($empHrs*$empRatePerHr))

