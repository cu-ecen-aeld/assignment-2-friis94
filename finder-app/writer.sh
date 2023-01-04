#!/bin/sh
# Author: Nanna Friis

set -e
set -u

if [ $# -lt 2 ]
then	
	echo "Need input for both writefile and writestr"
	return 1;
else
	writefile=$1
	writestr=$2
fi

mkdir -p "$(dirname "$writefile")" &&
    touch "$writefile"

echo $writestr > $writefile
