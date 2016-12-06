
#!/bin/bash
threshold=$1
echo "The threshold passed was ${threshold}"
cat sample.csv|cut -d "," -f 3 sample.csv|sed -e 's/^"//' -e 's/"$//' | awk  '$1 > "'"$threshold"'" {print $1}'| awk ' {sum+=$1} END {print "There were",NR,"numbers greater than the threshold and the average of salaries greater than threshold was: ",sum/NR}'
#cat sample.csv---dispalys data in sample.csv that contains 3 fields
#cut -d "," -f 3 sample.csv--- seperted by delimiter 'comma' get the 3rd field from csv file
#sed -e 's/^"//' -e 's/"$//' ---reploaqces the double quotes with space using sed
# awk  '$1 > "'"$threshold"'" {print $1}'---threshold value is passed as parameter and displays the fields greater than threshold 
#at the end " awk ' {sum+=$1} '" get the sum of all field,"sum/NR" getsthe average(NR=number of records in input fiel)