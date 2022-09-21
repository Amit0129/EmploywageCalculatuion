#! /bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"


isPartTime=1;
isFullTime=2;
empRatePerHr=20;
numWorkingDay=20;
maxHourInMonth=100;

totalEmpHr=0;
totalWorkingDay=0;





while [[ $totalEmpHr -lt $maxHourInMonth && $totalWorkingDay -lt $numWorkingDay ]]
do
        (( totalWorkingDay++ ))
        empCheck=$((RANDOM%3));
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
        totalEmpHr=$(( $totalEmpHr+$empHrs ))
done


totalSalary=$(( $empRatePerHr*$totalEmpHr ))
echo $totalSalary
