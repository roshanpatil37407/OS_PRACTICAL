echo -n "Enter a user"
read user
c=$( who | grep -ci $user )
if [ $c -gt 0 ]
then
echo "user is logged in"
echo "Hello"
else
echo "user is not Log in"
fi
