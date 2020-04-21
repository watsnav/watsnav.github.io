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
	if ls /run/postgresql > /dev/null 2>&1; then
		mkdir /run/postgresql && chown -R 1000:1000 /run/postgresql
		./updateqotd.sh -s
	elif ls /run/postgresql/*lock* > /dev/null 2>&1; then
		./updateqotd.sh -s
	else
		./updateqotd.sh
	fi
else
	exit 1
fi

