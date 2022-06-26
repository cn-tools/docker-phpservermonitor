#!/bin/bash

set -ueo pipefail

echo -n "Waiting until MariaDB has started"
until (timeout 1 bash -c "< /dev/tcp/${MYSQL_HOST}/3306") &> /dev/null; do
	echo -n .
	sleep 1
done
echo
