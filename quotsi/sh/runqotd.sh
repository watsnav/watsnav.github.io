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
	echo "WebService is accessible!"
	if ls /run/postgresql/*lock* > /dev/null 2>&1; then
		#database is running
		echo "Database is running!"
		pushd .
		cd /home/watsnav/scripts/www/watsnav.github.io/quotsi/sh
		./updateqotd.sh
		popd
	elif ls /run/postgresql > /dev/null 2>&1; then
		#database is not running but requirements are fullfilled
		echo -n "Database is not running, attempting to start.."
		own=stat -c %u /run/postgresql >/dev/null 2>&1 
		if [ "$own" != "1000" ]; then
			chown -R 1000:1000 /run/postgresql
		fi
		./updateqotd.sh -s
	else 
		#requirements not fulfilled
		echo -n "Database is not running, attempting to start.."
		mkdir /run/postgresql >/dev/null 2>&1
		chown -R 1000:1000 /run/postgresql
		./updateqotd.sh -s
	fi
else
	exit 1
fi
