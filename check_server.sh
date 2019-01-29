#!/bin/bash
menu ()
{
	while :
	do
	 clear
	 echo "   My Linux Utils"
	 echo "i  Check Internet"
	 echo "d. Check DNS "
	 echo "p. Prsent working directory"
	 echo "e. Exit"
	 echo -n "Please enter option [1 - 4]"
	 read opt
	 case $opt in
	  i) echo "************ Check Internet *************";
	     check_internet;
	     echo "Press [enter] key to continue. . .";
	     read enterKey;;

	  d) echo "*********** Check DNS**************";
	     check_DNS;
	     echo "Press [enter] key to continue. . .";
	     read enterKey;;
	  p) echo "You are in $(pwd) directory";
	     echo "Press [enter] key to continue. . .";
	     read enterKey;;
	  e) echo "Bye bye $USER !!";
	     exit 1;;
	  *) echo "$opt is an invaild option. Please select option between 1-4 only";
	     echo "Press [enter] key to continue. . .";
	     read enterKey;;
	esac
	done
}

pause_ui()
{
	echo "Press [enter] key to continue. . .";
	read enterKey;
}

trap menu SIGINT 



check_internet()
{
printf "%s" "Checking Internet by pinging google.com ...Press Ctrl + C to stop"
while ! timeout 0.2 ping -c 1 -n 8.8.8.8 &> /dev/null 
do
    printf "%c" "."
done
printf "\n%s\n"  "Internet is reachable"
}


check_DNS()
{
printf "%s" "Checking DNS by pinging 8.8.8.8  (Press Ctrl + C to stop)"
while ! timeout 0.2 ping -c 1 google.com &> /dev/null 
do
    printf "%c" "."
    sleep 3;
done
printf "\n%s\n"  "DNS  is OK"
}

menu