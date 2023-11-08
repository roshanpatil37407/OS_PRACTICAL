echo "Enter the number"
read number
i=2
if [ $number -lt 2 ]
then
echo "$number is not prime number"
exit
fi
while [ $i -lt $number ]
do
if [ `expr $number % $i` -eq 0 ]
then
echo "$number is not prime number"
exit
fi
i=`expr $i + 1`
done
echo "$number is prime number"