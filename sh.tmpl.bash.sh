#!/bin/bash

# Main function
__main() {
}

# Check for input file argument
if [ "$#" -gt 1 ]; then
	echo "Usage: $0 [<input_file>]"
	exit 1
fi

if [ "$#" -eq 1 ]; then
	input_file=$1
	input_file_ext="md"
	input_file_ext_name="Markdown"

	# Check if the file exists
	if [ ! -f "$input_file" ]; then
		echo "File not found!"
		exit 1
	fi

	# Check if the filename has the required extension
	if [[ "$input_file" != *."$input_file_ext" ]]; then
		echo "The file is not a $input_file_ext_name file!"
		exit 1
	fi

	__main < "$input_file"
else
	# Check if stdin has data
	if [ -t 0 ]; then
		echo "Error: No input file provided and no data piped."
		echo "Usage: $0 [<input_file>]"
		exit 1
	else
		# If data is piped, read from standard input
		if [ ! -t 0 ]; then
			__main
		else
			echo "Error: No input file provided and no data piped."
			echo "Usage: $0 [<input_file>]"
			exit 1
		fi
	fi
fi

