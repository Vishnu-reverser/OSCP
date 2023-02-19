#! /bin/bash

read USER
read GROUP

username=$(grep  -i "^${USER}:" /etc/passwd | cut -d ":" -f 1)

member=$(grep  -i "^${GROUP}:" /etc/passwd | cut -d ":" -f 1)

if [[ $USER == $username  && $GROUP == $member ]]; then
   echo "Membership valid!"
elif [[ $USER == $username && $GROUP == 'sudo' ]]; then
   echo "Membership invalid but available to join."
elif [[ $USER == $username || $GROUP == $member ]]; then
echo "One exists, one does not. You figure out which."
else
echo "Both are not found - why are you even asking me this?"
fi
