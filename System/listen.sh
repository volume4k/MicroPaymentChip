
#2nd programm
clear
echo "Starting..."
rm schreibfifo
rm lesefifo
mkfifo schreibfifo
mkfifo lesefifo
echo "Done."
while true; 
do cat schreibfifo | nc -l 5664 > lesefifo &  
exec < lesefifo > schreibfifo 
read VAR1
echo $VAR1
echo "Transaktionseingang:" >&2
echo $VAR1 >&2
echo $VAR1 | md5sum
done
