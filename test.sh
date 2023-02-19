#/bin/bash
# and example

if [ $USER == 'kali' ] && [ $HOSTNAME == 'kali' ]
then
  echo "Multiple statements are true!"
else
  echo "Not much to see here..."
fi
