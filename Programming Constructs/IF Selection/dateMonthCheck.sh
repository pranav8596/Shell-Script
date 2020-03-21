#!/bin/bash -x

date=$1
month=$2;

#Contants
MONTH_START_RANGE=3
MONTH_END_RANGE=6
DATE_START_RANGE=20
DATE_END_RANGE=20
START_DATE_OF_MONTH=1
END_DATE_OF_MONTH=31

if ([ $month -eq $MONTH_START_RANGE ] && [ $date -ge $DATE_START_RANGE ] && [ $date -le $END_DATE_OF_MONTH ]) || ([ $month -eq $MONTH_END_RANGE ] && [ $date -ge $START_DATE_OF_MONTH ] && [ $date -le $DATE_END_RANGE ]) || ([ $month -gt $MONTH_START_RANGE ] && [ $month -lt $MONTH_END_RANGE ] && [ $date -le $END_DATE_OF_MONTH ])
then
	echo TRUE
else
	echo FALSE
fi
