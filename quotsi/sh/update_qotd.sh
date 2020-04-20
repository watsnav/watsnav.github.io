#!/bin/bash
function update_qotd() {
	../cpp/qotd
	git add ..
	git commit -m "update qotd"
	git push
}

if [ -d /run/postgresql ]; then
	update_qotd
else
	sudo mkdir /run/postgresql
	sudo chown -R 1000:1000 /run/postgresql
	pg_ctl -D /mnt/disk0/pgdata start && update_qotd
fi
