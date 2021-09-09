#!/bin/bash
​
​
IFS=$'\n'
​
​
inspect_node() {
	last_char=$(echo $1|awk '{print substr($0,length($0),1)}')
	if [[ $last_char == "/" ]]
		then
		total_size=0
		files=$(ls $1)
		for file in $files
			do
				additional=$(inspect_node $1$file)
				total_size=$((total_size + additional))
			done
		echo $total_size
	else
		echo $(ls -l $1 | awk -v x=5 '{print $x}')
	fi
}
​
​
input=$1
last_char=$(echo $1|awk '{print substr($0,length($0),1)}')
if [[ $last_char != "/" ]]
then
	input=$input/
fi
echo $(inspect_node $input)#!/bin/bash
​
​
IFS=$'\n'
​
​
inspect_node() {
last_char=$(echo $1|awk '{print substr($0,length($0),1)}')
if [[ $last_char == "/" ]]
then
	total_size=0
	files=$(ls $1)
	for file in $files
	do
		additional=$(inspect_node $1$file)
		total_size=$((total_size + additional))
	done
	echo $total_size
else
	echo $(ls -l $1 | awk -v x=5 '{print $x}')
fi
}
​
​
input=$1
last_char=$(echo $1|awk '{print substr($0,length($0),1)}')
if [[ $last_char != "/" ]]
then
input=$input/