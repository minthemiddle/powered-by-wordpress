# 1=input, 2=output

while read p; do
	if wad -u "$p" 2>/dev/null | grep WordPress -c > /dev/null; then
		printf "$p,YES\n" >> $2
	else
		printf "$p,NO\n" >> $2
	fi
done <$1


