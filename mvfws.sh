#!/usr/bin/env bash
# Moving files with spaces from one directory to another

while getopts s:t: option
# The colons in the optstring imply that values are required for the
# corresponding flags. In the above instance all flags are observed with the
# aid of a colon: “s:t:”.
do
	case "${option}"
		in
		s) SOURCE=${OPTARG};;
		t) TARGET=${OPTARG};;
	esac
done

for files in $SOURCE
