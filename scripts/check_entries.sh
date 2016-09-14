# 1=input, 2=output

while read p; do
	if wad -u "$p" | grep WordPress -c > /dev/null; then
		printf "$p: YES\n"
	else
		printf "$p: NO\n"
	fi
done <$1


