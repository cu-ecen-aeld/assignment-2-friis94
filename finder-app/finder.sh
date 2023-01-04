#!/bin/sh
# Author: Nanna Friis

set -e
set -u

if [ $# -lt 2 ]
then	
	echo "Need input for both filesdir and searchstr"
	return 1;
else
	FILESDIR=$1
	SCEARCHSTR=$2
fi

if [ ! -d "$FILESDIR" ]
then
	echo "$FILESDIR directory does not exist."
	return 1
fi

FILENUM=$(find $FILESDIR -type f | wc -l)
STRINGNUM=$(grep -r $SCEARCHSTR $FILESDIR | wc -l)



echo "The number of files are $FILENUM and the number of matching lines are $STRINGNUM"

