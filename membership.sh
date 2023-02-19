#! /bin/bash

read USER
read MEMBERSHIP

if [[ $USER == 'student' && $MEMBERSHIP == 'root' ]]
then 
echo "Membership valid!"
elif [[ $USER == 'student' || $MEMBERSHIP == 'root' ]]
then
echo "One exists, one does not"
elif [[ $USER == 'student' || $MEMBERSHIP == 'sudo' ]]
then
echo "Membership invalid but available to join"
else
echo "Both are not found - why are you even asking me this?."
fi
