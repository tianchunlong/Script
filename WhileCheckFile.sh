COUNTER=0  
#while [  $COUNTER -lt 70 ]; do  
#    echo The counter is $COUNTER  
#    File=$(sed -n "$COUNTERp" filew.log)
#    echo After counter is $COUNTER  
#    cat $File | grep -m 'waiting to lock'
#    let COUNTER=COUNTER+1   
#done  
echo "=====this is method one====="
rm w.log
cat filer.log | while read line
do
	echo $line | tee -a ./w.log
	cat $line | grep 'waiting to lock' | tee -a ./w.log
done
