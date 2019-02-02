#!/bin/bash
# Authors : Kelley Kelley and Lara Chunko
# Date: 1/1/2019

#Problem 1 and 2 Code:
#Make sure to document how you are solving each problem!
#ask them for the name of the file
echo "Please enter the name of the file."
read fileName
echo "Please enter regular expression."
read regExp
grep $regExp $fileName

#this is just to make the rest of the problems easier
regexFile="regex_practice.txt"

#Problem 3.1 Code:
#counting the number of phone numbers
grep -c '[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}' $regexFile

#Problem 3.2 Code:
#couting number of emails
grep -c '[0-9a-zA-Z_.-]*\@[a-zA-Z0-9]*\.[a-z]\{3\}' $regexFile

#Problem 3.3 Code:
#list all the 303 phone numbers and put them in phone_results.txt
#grep '303-[0-9]\{3\}-[0-9]\{4\}' $regexFile
grep '303-[0-9]\{3\}-[0-9]\{4\}' $regexFile > phone_results.txt

#Problem 3.4 Code:
#list all of the geocities.com emails and put them in a file
#grep '[0-9a-zA-Z_.-]*\@geocities\.com' $regexFile
grep '[0-9a-zA-Z_.-]*\@geocities\.com' $regexFile > email_results.txt

#Problem 3.5 Code:
#list all the lines that match the command line argument and
#put the results in command_results.txt
grep $1 $regexFile > command_results.txt

