# get raw text
wget -q -O - "$@" https://raw.githubusercontent.com/minthemiddle/powered-by-wordpress/master/Readme.md

# filter out items
awk '/## Commercial/{flag=1;next}/# Contribute/{flag=0}flag' Readme.md

# count entries
less count.txt | grep ^- | wc -l
