#!/bin/bash
#histify

while getopts ":c:h:" opt;do
    case $opt in
	c) csv="$OPTARG";;
	h) hist="$OPTARG";;
    esac
done

let numvals=$(head -n 1 $csv | sed 's/[^,]//g' | awk '{print length}')+1
tail -n +2 $csv > tmp_csv

while read line
do
    seq=$(echo $line | cut -d "," -f 1 | sed 's/"//g')
    seqstart=$(echo $line | cut -d "," -f 2)
    seqend=$(echo $line | cut -d "," -f 3)
    let length=$seqend-$seqstart+1
    let total=0
    for ((i=4;i<=$numvals;i++));
    do
	    value=$(echo $line | cut -d "," -f $i | tr -d '\r')
	    let total=$total+$value
    done
    percent=$(printf "$(($total * 100/$length))")
    echo $seq" "$seqstart" "$seqend" "$percent >> $hist
done < tmp_csv

rm tmp_csv

exit 0
