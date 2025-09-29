#!/bin/bash
function check_connectivity() {
	ping -c 3 watsnav.github.io >/dev/null 2>&1
}
uid=`id -u`
if [ $uid -ne 0 ]; then
	echo "Permission Denied"
	exit 1
fi
if check_connectivity; then
	echo "WebService is accessible!"
	if ls /run/postgresql/.s* > /dev/null 2>&1; then
		#database is running
		echo "1: Database is running!"
		pushd .
		cd /home/watsnav/scripts/www/watsnav.github.io/quotsi/sh
		su -c "./updateqotd.sh" watsnav
		popd
	elif ls /run/postgresql > /dev/null 2>&1; then
		#database is not running but requirements are fullfilled
		echo -n "2: Database is not running, attempting to start.."
		own=stat -c %u /run/postgresql >/dev/null 2>&1 
		if [ "$own" != "1000" ]; then
			chown -R 1000:1000 /run/postgresql
		fi
		pushd .
		cd /home/watsnav/scripts/www/watsnav.github.io/quotsi/sh
		su -c "./updateqotd.sh -s" watsnav
		popd
	else 
		#requirements not fulfilled
		echo -n "3: Database is not running, attempting to start.."
		mkdir /run/postgresql && chown -R 1000:1000 /run/postgresql
		pushd .
		cd /home/watsnav/scripts/www/watsnav.github.io/quotsi/sh
		su -c "./updateqotd.sh -s" watsnav
		popd
	fi
else
	exit 1
fi

