#!/bin/bash
TEMP=$(acpi -t | awk '{ print $4 "°C" }')
BATT=$(acpi -b | awk '{ print substr($4, 1, length($4)-1) }')
ADPT=$(acpi -a | awk '{ print $3 }')
echo $TEMP
echo $BATT
echo $ADPT
