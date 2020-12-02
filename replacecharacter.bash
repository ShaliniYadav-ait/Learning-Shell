#!/bin/bash
echo "Enter file name"
read file_name
echo "Enter target character"
read target
echo "Enter replace with"
read final
count=`fgrep -o ${target} ${file_name} | wc -l`
echo "The count is $count"

if [ $count -gt 100 ]
     then
         expr="sed 's/${target}/${final}/g' ${file_name} > tmp.txt && mv tmp.txt ${file_name}"
         eval $expr
     else
         echo "less than 100"
fi
