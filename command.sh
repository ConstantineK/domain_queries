#!/bin/bash
args=("$@")
dbname=${args[0]}
printf "Connecting to: %s\n" "$dbname"
for ((i=1; i < $#-1; i++)) {  
   printf "*%s* result:\n" "${args[$i]}"
   sqlite3 $dbname < ${args[$i]}
   printf "\n"
}