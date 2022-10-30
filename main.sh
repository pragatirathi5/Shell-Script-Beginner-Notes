#!/bin/bash

# To run the shell script use: ./filename.sh
# To give executable permissions to the file use: chmod +x filename.sh


#1 To read name
echo "What is your name ?"
read name
echo "Hello $name"


# Values are assigned to the variables using an "=" sign. There should be no space between the variable, the equal sign and the value.
# The names of user defined variables can start with the letters a-z, A-Z or the underscore character. The name of variable can contain letters a-z or A-Z, numbers from 0-9 or the underscore character.


#2
age=24
name="Pragati Rathi"
echo "$name is $age years old"


# By default, shell script variables are treated as a string and not number which adds complexity in doing math in shell script. So, in age=24, it will take it as a number but performing mathematical operations over it is not possible.
# To perform mathematical operations, we use a special statement or a word known as "let".


#3
age=24
echo "Initial age is $age"
let age=$age+1
echo "Now, the age is incremented to $age"


# Arithmetic Operators: +, -, *, /, %, =, ==, !=
# Relational Operators: -eq (equal to), -ne (If value is not equal, condition becomes true), -gt (checks if the value of left operand is greater than the value of right operand), -lt (checks if value of left is less than the value of right), -ge (greater than or equal to right operand), -le (less than or equal to right operand).


#4 If condition
echo "What is your age ?"
read age
if [[ "$age" -lt 24 ]];
then
echo "You are quite young"
elif [[ "$age" -eq 24 ]]
then
echo "Success"
else
echo "Better try next time"
fi


# All the conditional expressions should be inside square braces with spaces around them.
# While Loops: for, while and until.


#5 while loop
value=5
while [ $value -ge 5 ]
do
echo "The value is $value"
break;
done


#6
value=5
while [ $value -ge 5 ]
do 
let value=$value+1
echo "Now, the value is $value"
break;
done


#7 for loop
for Color in pink red white
do
echo "Color: $Color"
done


#8 
Colors="pink red white"
for Color in $Colors
do 
echo "Color: $Color"
done


#9 Provide input: ping -c 1 $Host (ping command is used to check the network connectivity of host )
Host="https://www.google.com"
if [ "$?" -eq 0 ]
then
echo "$Host reachable"
else
echo "$Host not reachable"
fi


#10 Calling a function
function hey(){
    echo "Heyyy"
}
hey


#11 Passing Arguments in the function
function demo(){
    echo "Hi..Good to see you $1"
}
demo User


#12 To print third character of a line
echo "Please enter N line"
read N 
printf ${N:3:1}


#13 Display numbers from 1-10
for i in {1..10}
do 
echo $i
done


#14 To find sum, subtraction, multiplication and division of two numbers
read X 
read Y 
echo $((X+Y))
echo $((X-Y))
echo $((X*Y))
echo $((X/Y))


# Wildcards: It is a character or a string used for pattern matching. Wildcards can be used with most common commands such as ls, rm, cp.
# Eg. of wildcards: "*" - Matches zero or more characters, "?" - Matches exactly one character, "[]" - Matches any of the characters included between the brackets. Matches exactly one character, "[!]" - Matches any of the characters not included in the brackets. Matches exactly one character.
# Named character classes: alpha, alnum, digit, lower, space, upper. Eg. [[:alpha:]]
# "\": Escape Character. It is used if you want to match a wildcard character.
# "^" in regex matches start of the string. "$" matches end of the string.


# Exit Status/Return Code: Every command returns an exit status which ranges from 0-255. 0 means success and other than 0 means error condition.
# "$?" contains the return code of previously executed command.







