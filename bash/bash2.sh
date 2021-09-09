#! /bin/bash
​
​
IFS=$'\n'
​
​
build_plot() {
	sorted=$(tail -n +2 $1 | sed -e 's/""//g' | sed 's/\,,\b/,??,/g' | \
			gawk -v column_num="$2" -v RS='\r?\n' 'BEGIN {FPAT = "([^,]*)|(\"[^\"]+\")"; ORS = "\r\n"}{printf("%s\n", $column_num)}' \
			| awk 'NF' | sort | uniq -c)
	​
	global_length=0
	max_count=0
	for line in $sorted
	do
		key=$(echo $line | awk -F " " '{print $2}')
		length=${#key}
		global_length=$(( length > global_length ? length : global_length ))
		count=$(echo $line | awk -F " " '{print $1}')
		max_count=$(( count > max_count ? count : max_count ))
	done
	​
	for line in $sorted
	do
		count=$(echo $line | awk -F " " '{print $1}')
		key=$(echo $line | awk -F " " '{print $2}')
		elements_count=$((count * 60 / max_count))
		elements=$(awk -v i=${elements_count} 'BEGIN { OFS="#"; $i="#"; print }')
		printf "%${global_length}s %s\n" $key ${elements}
	done
}
​
​
file=$1
headers=$(head -n 1 $1)
​
​
POSITIONAL=()
while [[ $# -gt 1 ]]
	do
	key="$2"
		​
	case $key in
		-s|--stat)
		column="$3"
		shift
		shift
		;;
	esac
	done
​
​
number=$(echo $headers | awk -v RS=',' "/${column}/{print NR; exit}")
build_plot $file $number