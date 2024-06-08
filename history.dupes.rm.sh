#!/bin/bash

cp ~/.bash_history ~/.bash_history.bak &&
temp_file=$(mktemp) &&
history | awk -F'\\$>' '!seen[$2]++' | sed -E 's/^[ ]*[0-9]+[ ]+[0-9-]+[ ]+[0-9:]+[$]+[>]+ //' > "$temp_file" &&
history -c &&
mv "$temp_file" ~/.bash_history &&
history -r ~/.bash_history

# TODO
# [ ] Read `awk -F` from current `$HISTTIMEFORMAT`
