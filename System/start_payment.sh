#!/bin/bash
# 0ur f1rst script
clear
VAR2=$(date +"%H:%M:%S") 
echo $VAR2
echo "How much do you need to pay?"
read VAR1
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo --------------------------------------
echo --------------------------------------
echo ---------------$VAR1"$" ----------------
echo --------------------------------------
echo --------------------------------------
echo
echo
echo
echo
echo
echo The 2-Factor Code is:
random=$(awk -v min=100000 -v max=999999 'BEGIN{srand(); print int(min+rand()*(max-min+1))}')
echo $VAR2
echo
echo
echo
echo "Generating code..."
sleep 3
echo "Done."
echo
finish=$(echo $VAR1,3946937503,$VAR2,$random)
echo $finish
explorenfc-basic --type=URI -w $finish
echo $finish | nc flashed.club 5664
#read VAR4 | nc flashed.club 5664
echo $random*$random | bc | nc flashed.club 5664
sleep 2
echo ----------------------------------------------
echo ----------------------------------------------
echo ----------------------------------------------
echo ----------------------------------------------
echo "Payment Completed!"
echo "created by Flashed & bAcCa"


