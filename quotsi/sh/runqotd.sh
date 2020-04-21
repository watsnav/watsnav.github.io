#!/bin/bash
function check_connectivity() {
	ping -c 3 watsnav.github.io >/dev/null 2>&1
}
#uid=`id -u`
#if [ $uid -ne 0 ]; then
	#echo "Permission Denied"
	#exit 1
#fi
if check_connectivity; then
	if !ls /run/postgresql > /dev/null 2>&1; then
		#echo "1"
		if mkdir /run/postgresql >/dev/null 2>&1; then 
			chown -R 1000:1000 /run/postgresql
		else
			own=stat -c %u /run/postgresql >/dev/null 2>&1 
			if [ "$own" != "1000" ]; then
				chown -R 1000:1000 /run/postgresql
			fi
		fi
		./updateqotd.sh -s
	elif !ls /run/postgresql/*lock* > /dev/null 2>&1; then
		#echo "2"
		own=stat -c %u /run/postgresql >/dev/null 2>&1 
		if [ "$own" != "1000" ]; then
			chown -R 1000:1000 /run/postgresql
		fi
		./updateqotd.sh -s
	else
		#echo "3"
		./updateqotd.sh
	fi
else
	exit 1
fi

