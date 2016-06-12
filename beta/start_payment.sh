#!/bin/bash
# MikroPayment [client] script v0.1
# by Flashed & bAcCa

clear
PTIME=$(date +"%H:%M:%S")
#PTIME for Payment time

echo $PTIME "| Amount to pay:"
# Format: 16:37:54 | txt
read AMOUNT
# Waiting for answer

clear
# clears the screen for a better overview

echo "##########"
echo "Receipt:"
echo $PTIME" | AMOUNT: " $AMOUNT"$"
echo "##########"
twofactor=$(awk -v min=100000 -v max=999999 'BEGIN{srand(); print int(min+rand()*(max-min+1))}')
# Generates 2-Factor code.
echo $PTIME" | 2-Factor: "$twofactor
