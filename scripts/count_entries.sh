# get raw text
wget -q -O - "$@" https://raw.githubusercontent.com/minthemiddle/powered-by-wordpress/master/Readme.md

# filter out items
awk '/## Commercial/{flag=1;next}/# Contribute/{flag=0}flag' Readme.md

# count entries
less count.txt | grep ^- | wc -l

# combined, but wget is required to download the file first
awk '/## Commercial/{flag=1;next}/# Contribute/{flag=0}flag' ~/Readme.md | grep ^- | wc -l