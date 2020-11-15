#! /bin/bash
# username.sh
# Liz Lyon
echo "Enter a username: "
echo "Use lower case characters, digits, and the underscore character"
echo "Username must start with a lower case character"
echo "It must contain at least 3 but no more than 12 characters"

read USERNAME
while echo "$USERNAME" | egrep -v "^[a-z][0-9a-z_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username!"
	echo "Enter a username: "
	read USERNAME
done
echo "Thank you"
