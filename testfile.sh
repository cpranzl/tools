#!/usr/bin/env bash

file="/home/cpranzl/README"

if [ -f $file ]
then
    echo "Is a file"
else
    echo "Is not a file"
fi

file="/home/cpranzl"

if [ -f $file ]
then
    echo "Is a file"
else
    echo "Is not a file"
fi

