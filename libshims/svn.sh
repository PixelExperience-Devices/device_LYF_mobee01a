#!/bin/sh

echo "$1"

ST="$1"
NN=`echo "${ST/"/blob/"/"/branches/"}"`
if [[ -n "$NN" ]]
then
	NNN=`echo "${NN/"/tree/"/"/branches/"}"`
fi

svn export "$NNN"
