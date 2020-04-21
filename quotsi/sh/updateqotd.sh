#!/bin/bash
function update_qotd() {
	../cpp/qotd
	git add ..
	git commit -m "update qotd"
	git push
}
function startdb() {
	pg_ctl -D /mnt/disk0/pgdata start 
}

if [ -z $1 ]; then
	update_qotd
elif [ $1 = "-s" ]; then
	startdb && update_qotd
else
	echo "Incorrect option"
	exit 1
fi

