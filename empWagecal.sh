#! /bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"


isPartTime=1;
isFullTime=2;
MaxHrs_inMonth=100;
empRatePerHr=20;
numWorkingDays=20;
totalEmpHr=0;
totalWorkingDays=0;

function wrkHrs() {
   case $1 in
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

while [[ $totalempHrs -lt $MaxHrs_inMonth &&
         $totalWorkingDays -lt $numWorkingDays ]]
do
      ((totalWorkingDays++))
      empHrs="$( wrkHrs $((RANDOM%3)) )"
      totalWorkHrs=$(($totalempHrs+$empHrs))
done
