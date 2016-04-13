#!/bin/bahsh -e

#1
for VARIABLE in 1 2 3 4 5 .. N
do
	command1
	command2
	commandN
done

for i in 1 2 3 4 5
do
   echo "Welcome $i times"
done


##2
for VARIABLE in file1 file2 file3
do
	command1 on $VARIABLE
	command2
	commandN
done

for file in /etc/*
do
	if [ "${file}" == "/etc/resolv.conf" ]
	then
		countNameservers=$(grep -c nameserver /etc/resolv.conf)
		echo "Total  ${countNameservers} nameservers defined in ${file}"
		break
	fi
done


###3
for OUTPUT in $(Linux-Or-Unix-Command-Here)
do
	command1 on $OUTPUT
	command2 on $OUTPUT
	commandN
done
