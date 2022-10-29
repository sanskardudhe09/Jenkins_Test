#!/bin/bash
#Arguments to the shell script are all .c files
arr=("$@")
temp_arr=("$@")
i=0
header=()
cscope $( find * -type f -name '*.[ch]*' )
while [ $i -lt ${#arr[@]} ]
do
     echo ${arr[$i]}
     i=`expr $i + 1`
done
file=Makefile
if [[ -f $file ]]
then 
    rm -f "$file"
fi
touch "$file"
printf "a.out:\t" >> $file
for i in "${arr[@]}"
do
    printf "${i%.*}.o " >> $file
done
printf "\n" >> $file
printf "\t" >> $file
printf "cc " >> $file
for i in "${arr[@]}"
do
    printf "${i%.*}.o " >> $file
done
echo "-o a.out" >> $file
i=0
while [ $i -lt ${#arr[@]} ]
do
    header=$( grep -o "\".*\.h\"" ${arr[$i]} | tr -d '"' | tr '\n' ' ')
    new_arr=()
    new_arr=("$header")
    printf "${arr[i]%.*}.o: " >> $file
    printf "${new_arr[*]}" >> $file
    for j in "${temp_arr[@]}"
    do 
       printf "${j%.*}.c " >> $file
    done    
    printf "\n" >> $file
    printf "\t" >> $file
    printf "cc -c ${arr[i]%.*}.c" >> $file
    printf "\n" >> $file
    i=`expr $i + 1`
done
echo "Makefile generated successfully"





