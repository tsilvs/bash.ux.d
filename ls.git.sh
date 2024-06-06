#!/bin/bash

QUT='\033[47;30m'
GIT='\033[40;37m'
NC='\033[0m'
listed_files=""
l=0

IFSB=$IFS
IFS=$'\n'

items=$(ls --color --group-directories-first -h1A)

for item in $items; do
	plain_item=$(echo $item | sed 's/\x1b\[[0-9;]*m//g')
	display_item="$item"
	git_mark=""
	first_line=""
	if [[ -d "$plain_item" ]]; then
		(( l < "${#plain_item}" )) && l="${#plain_item}"
		[ -d "$plain_item/.git" ] && git_mark="${GIT}\xF0\x9F\x8C\xBF${NC} "
		[ -f "$plain_item/README.md" ] && first_line=$(awk 'NR==1{print; exit}' "$plain_item/README.md")
		listed_files+="$display_item\t$git_mark${QUT}$first_line${NC}\n"
	else
		listed_files+="$display_item\n"
	fi
done

IFS=$IFSB

#echo "$l"
tab_stop=$(tabs -d | awk -F "tabs " 'NR==1{ print $2 }')
#echo "tab stop: $tab_stop"
#tabs_per_line="$(($l / $tab_stop))"
#echo -e "$listed_files" | sed "s/\t/$(printf '\t%.0s' $(seq 1 $tabs_per_line))/"
tabs $(($l + 1))
#tab_stop=$(tabs -d | awk -F "tabs " 'NR==1{ print $2 }')
#echo "tab stop: $tab_stop"
echo -e "$listed_files"
tabs $tab_stop
