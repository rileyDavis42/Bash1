file1=variable1.txt
file2=variable2.txt
if [ -z $1 ]; then
  echo "bye"
  exit 1
else
  continue
fi
echo "Authentication Required"
echo "Username:"
read username
echo "Password:"
read password
if [ "$username" != 'mtech' ] || [ "$password" != 'pass' ]; then
  echo "Access denied"
  exit 1
else
  echo "Access granted, welcome $username, the script is now starting..."
  continue
fi
cd ~/Desktop
mkdir newDirect
cd newDirect
echo "message1" > $file1
mv $file1 ~/Desktop
pwd
cd ..
mkdir TXT
echo "$1" > $file2
mv $file2 TXT/
mv $file1 TXT/
rm -r newDirect
cd TXT/
cat $file1
cat $file2
pwd
ls -l
echo "Script finished. If variable 1 and variable 2 are in TXT folder you passed"
