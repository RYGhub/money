#!/usr/bin/fish

set -g origin $argv[1]
set -g temporary $argv[1].formatting.tmp

echo_progress "Reformatting "
echo_highlight $origin
echo_progress " by using "
echo_highlight $temporary
echo_progress "..."
echo

bean-format $origin -c 77 > $temporary
cat $temporary

echo_progress "Check if the file was formatted correctly, then confirm to overwrite the existing contents."

if confirm
    mv -f $temporary $origin
else
    rm -f $temporary
end
