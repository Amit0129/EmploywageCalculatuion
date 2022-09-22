#! /bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"


isPartTime=1;
isFullTime=2;
MaxHrs_inMonth=10;
empRatePerHr=20;
numWorkingDays=20;
totalEmpHr=0;
totalWorkingDays=0;

declare -A dailyWage

function wrkHrs() {
   local empCheck=$1
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
 echo $empHrs;
}
function getEmpWage() {
  local empHrs=$1
echo $(($empHrs*$empRatePerHr))
}
while [[ $totalempHrs -lt $MaxHrs_inMonth &&
         $totalWorkingDays -lt $numWorkingDays ]]
do
      	((totalWorkingDays++))
      	empCheck=$((RANDOM%3));
	empHrs="$( wrkHrs $empCheck )"
      	totalempHrs=$(($totalempHrs+$empHrs))
	dailyWage["Day "$totalWorkingDays]="$( getEmpWage $empHrs )"
done



totalSalary=$(($totalempHrs*$empRatePerHr));
echo ${dailyWage[@]}
echo ${!dailyWage[@]}
