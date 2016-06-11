#!/bin/bash
# My first script

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
echo ---------------$VAR1 -----------------
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
echo Done.
echo
finish=$(echo $VAR1,3946937503,$VAR2,$random)
explorenfc-basic --type=URI -w $finish
