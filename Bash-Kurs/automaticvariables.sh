#!/bin/bash

#$0 scriptname as variable
#$1 and higher hold the additonal commands
#$* display all the commands
#$_ display the last command
#$# number of commands
#$! kills last process
#$$ shows the process number
#$? questioning if the last command was ok
# $! Process Id of the last order

echo "this script has the process number: $$"
echo "In Ordnung: $?"

echo "My additional command is $1 ($!) "

echo "route: $# ($!)"

echo "last command: $_ ($!)"

echo "All commands are: $* ($!)"

