#!/bin/bash
#karyotypify

while getopts ":g:k:" opt;do
	case $opt in
		g) genome="$OPTARG";;
		k) karyotype="$OPTARG";;
	esac
done

touch tmp
cat $genome | awk '/^>/ {if (seqlen){print seqlen}; print ;seqlen=0;next; } { seqlen += length($0)}END{print seqlen}' > tmp

while read line
do
	if [[ ${line:0:1} == ">" ]]
	then
		seq=${line:1}
	else
		len=$line
		echo "chr - "$seq" "$seq" 0 "$len" black" >> $karyotype
	fi
done < tmp
rm tmp

exit 0
