# Shell Script to check if an item in current directory is a file or directory
[ec2-user@ip-172-31-16-177 ~]$ cat fileordir.sh
for entry in `ls`
do
if [[ -f $entry ]]
then
echo "$entry : file"
fi
if [[ -d $entry ]]
then
echo "$entry : directory"
fi
done

Sample Run:
[ec2-user@ip-172-31-16-177 ~]$ ./fileordir.sh

script.sh : file
sol3.sh : file
test : directory
