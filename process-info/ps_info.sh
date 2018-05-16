#!/bin/bash 

cd /proc
cp -r **/{status,fd} --parents ../home/kalinek/Desktop/data 2> /dev/null

line="`find /home/kalinek/Desktop/data -maxdepth 1 -mindepth 1 -type d -printf '%f\n' | egrep -x '[0-9]+' | tr '\n' ' '`"
array=($line)

echo -e "\e[1m"
echo -e "\e[91m"

printf "   | %-15s | %-6s | %-5s| %-12s | %5s |\n" "NAME" "PID" "PPID" "STATE" "F OPENED"
echo "   -------------------------------------------------------------"
echo -e "\e[21m"
echo -e "\e[32m"
tput cuu 1

for dir in "${array[@]}"
do
   cd /proc/$dir 
   name=`cat < status | grep -w "Name:" | cut -c 7-`
   pid=`cat < status | grep -w "Pid:" | cut -c 5-`
   ppid=`cat < status | grep -w "PPid:" | cut -c 6-`
   state=`cat < status | grep  -w "State:" | cut -c 7-`
   numberOfFiles=`ls fd | wc -l`

   printf "   | %-16s|%-6s |%-6s|%-12s |%5s |\n" "$name" "$pid" "$ppid" "$state" "$numberOfFiles" 
   echo "   ----------------------------------------------------------"
done

rm -r /home/kalinek/Desktop/data/*
echo -e "\e[0m"



