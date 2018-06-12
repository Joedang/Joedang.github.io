#!/bin/bash
IFS_old=$IFS
IFS=$'\n' # break on newlines only
find img -iname '*.pdf' | while read f
do
	echo value of f:
	echo $f
	echo basename of f:
	fb=`basename $f`
	echo $fb
	fbne=${fb%.*}
	echo stripped name of f:
	echo $fbne
	echo constructed command:
	toExec='pdftocairo -png -singlefile "$f" img/thumbnail/"$fbne"'
	echo $toExec
	echo
	echo Executing command...
	eval $toExec
	echo
done
IFS=$IFS_old
