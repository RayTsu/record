#!/bin/bash
ips="10.0.0.1 10.0.0.2 10.0.0.3 10.0.0.4"
for i in $ips
do
  ./ignore_input_pass.sh $i
   let j+=1
   echo $j
done
