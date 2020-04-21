#!/bin/bash
function check_connectivity() {
	ping -c 3 watsnav.github.io >/dev/null 2>&1
}
#uid=`id -u`
#if [ $uid -ne 0 ]; then
	#echo "Permission Denied"
	#exit 1
#fi
check_connectivity
if [ $? -eq 0 ]; then 
	if [ -d /run/postgresql ]; then
		./updateqotd.sh
	else
		mkdir /run/postgresql && chown -R 1000:1000 /run/postgresql
		./updateqotd.sh -s
	fi
else
	exit 1
fi

