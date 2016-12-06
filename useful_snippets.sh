 sed -i 's/original/new/g' file.txt

# Explanation:
# sed = Stream EDitor
# -i = in-place (i.e. save back to the original file)
# s = the substitute command
# original = a regular expression describing the word to replace (or just the word itself)
# new = the text to replace it with
# g = global (i.e. replace all and not just the first occurrence)
# file.txt = the file name

#!/bin/bash
Myvar=sometext
echo "double quotes is $Myvar" #double quotes is sometext.
# Double quotes do variable substitution
echo 'single quote is $Myvar' #single quote is $Myvar
#Single quotes will not do variable substitution

# To view common lo fie called /var/log/messages.Use any of the followin
 less /var/log/messages
 more -f /var/log/messages
 cat /var/log/messages
 tail -f /var/log/messages
 grep -i error /var/log/messages

To mail when job is done:
(sleep 60; echo "sleep 5; echo foo) 2>&1 | mail -s "yourcommand is done" nagarkantishruti@gmail.com") 2>&1 | mail -s "mail command when your job is done on linux" nagarkantishruti@gmail.com

To place a foreground process in the background: suspend the foreground process (with Ctrl-z) then enter the bg command to move the process into the background.
Show the status of all background and suspended jobs: jobs
Bring a job back into the foreground: fg %jobnumber
Bring a job back into the background: bg %jobnumber

To send file to the mail through command line
sendemail -t nagarkantishruti@gmail.com -m "Here are your files!" -a quote.js

Run a Command or Shell-Script Even after You Logout
nohup find -size +100k > log.txt &
