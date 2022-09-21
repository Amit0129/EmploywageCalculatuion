#! /bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"


isPartTime=1;
isFullTime=2;
empCheck=$((RANDOM%3));
empRatePerHr=20;

case $empCheck in
                $isFullTime)
                        empHrs=8
                        ;;
                $isPartTime)
                        empHrs=4
                        ;;
                *)
                	empHrs=0
                        ;;
esac
salary=$(($empRatePerHr*$empHrs))


echo $salary
