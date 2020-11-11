#!/bin/bash

# replace the "vlc" in this line if you have a different password.
vtc_seconds=$(curl -u :vlc http://localhost:8080/requests/status.xml | xmllint --xpath "//root/time/text()" -)

if [ 0 -eq $? ]
then
echo "vtc_seconds: ${vtc_seconds}"
	hour=$(bc <<<"$vtc_seconds/3600")
	min=$(bc <<<"($vtc_seconds - $hour*3600)/60")
	sec=$(bc <<<"($vtc_seconds - $hour*3600 - $min*60)")

	hour=$(printf "%02d\n" $hour)
	min=$(printf "%02d\n" $min)
	sec=$(printf "%02d\n" $sec)

	timecode="${hour}:${min}:${sec}"

	echo $timecode | xclip -selection c -rmlastnl
else
	echo "no data from vlc"
fi;
