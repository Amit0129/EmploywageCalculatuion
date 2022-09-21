echo "Welcome to Employee Wage Computation Program on Master Branch"
isPresent=1
randomCheck=$((RANDOM%2))
if [ $isPresent -eq $randomCheck ]
then
        echo "Employ is present"
else
        echo "Employ is absent"
fi

