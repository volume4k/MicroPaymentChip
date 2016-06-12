#!/bin/bash
# MikroPayment [client] script v0.1
# by Flashed & bAcCa

clear
PTIME=$(date +"%H:%M:%S")
# PTIME for Payment time

BLUE='\033[0;34m'
GREEN='\033[1;32m'
RED='\033[0;31m'
# For colored text
NC='\033[0m' # No Color


echo -e $PTIME "| Amount to pay:" $RED
# Format: 16:37:54 | txt
read AMOUNT
# Waiting for answer
echo -e $NC
clear
# clears the screen for a better overview

echo -e $BLUE"##########"$NC
echo -e $RED"Receipt:"$NC
echo -e $BLUE"##########"$NC
echo -e $PTIME" | AMOUNT: " $GREEN $AMOUNT"$" $NC
echo -e $BLUE"##########"$NC
twofactor=$(awk -v min=100000 -v max=999999 'BEGIN{srand(); print int(min+rand()*(max-min+1))}')
# Generates 2-Factor code.
echo $PTIME" | 2-Factor: "$twofactor
echo -e $BLUE"##########"$NC
echo -e $PTIME" | Generating SGR..."
echo -e $BLUE"##########"$NC
SGR=$(echo $AMOUNT,3946937503,$PTIME,$twofactor)
sleep 1
echo $PTIME" | SGR: "$SGR
echo -e $BLUE"##########"$NC
echo "Put your Chip on the reader NOW!"
echo -e $BLUE"##########"$NC

# DC end

INPUT=$(explorenfc-basic -c --type=URI)
echo $INPUT
