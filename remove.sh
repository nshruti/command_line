#usage: ./remove.sh file "word"
cat $1 | tr '|' ' ' > $1 && echo "delimiter changed from '|' to ' '"
grep -viw $2 $1 > removing && echo "removing '$2' from '$1' and sending the ouput to new file 'removing'"
chmod 755 $1 && echo "chmod 755 $1 was successful"
rm $1 && echo "removing $1 was successful"
mv removing $1 && echo "renaming'removing' to $1 was successful"
echo "Output of $1 is"
echo ""
cat $1

# pinup@DESKTOP-LAS6GPI /cygdrive/c/users/pinup/Desktop/code/node-course
# $ cat sampledata.csv
# Shruti|Nagarkanti|99500
# Shruti|Nagarkanti|99501
# Sarayu|Nagarkanti|99502
# Sarayu|Nagarikanti|99503
# Sagar|Nagarikanti|99504

# pinup@DESKTOP-LAS6GPI /cygdrive/c/users/pinup/Desktop/code/node-course
# $ ./remove.sh sampledata.csv sagar
# delimiter changed from '|' to ' '
# removing 'sagar' from 'sampledata.csv' and sending the ouput to new file 'removing'
# chmod 755 sampledata.csv was successful
# removing sampledata.csv was successful
# renaming'removing' to sampledata.csv was successful
# Output of sampledata.csv is

# Shruti Nagarkanti 99500
# Shruti Nagarkanti 99501
# Sarayu Nagarkanti 99502
# Sarayu Nagarikanti 99503
