#!/bin/bash -x

INCHES=12
METER=0.30
LENGTH_IN_FEET=60
BREADTH_IN_FEET=40
ACRES=4046.86

#Conversion for 42 inches in feet
feet=`echo "scale=2; 42/$INCHES" | bc`
echo 42 Inches: $feet

#Conversion for Rectangular plot of 60ft x 40ft in meters
lengthInMeter=`echo "scale=2; $LENGTH_IN_FEET * $METER" | bc`
breadthInMeter=`echo "scale=2; BREADTH_IN_FEET * $METER" | bc`
echo Rectangular plot of 60 feet x 40 feet: $lengthInMeter meter  x $breadthInMeter meter

#Conversion for area of 25 plots in acres
plot=`echo "scale=2; $lengthInMeter * $breadthInMeter" | bc`
plots25=`echo "scale=2; $plot * 25" | bc`
plots25inAcres=`echo "scale=2; $plots25 / $ACRES" | bc`
echo Area of 25 plots in acres: $plots25inAcres
