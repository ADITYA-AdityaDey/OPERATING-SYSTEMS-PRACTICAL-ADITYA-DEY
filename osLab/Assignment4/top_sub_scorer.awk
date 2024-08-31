#!/bin/awk -f
BEGIN { FS="~" }

NR>1 {
	if(highest1<$3) {
		highest1=$3
		highest1_name=$1
	}
	if(highest2<$4) {
		highest2=$4
		highest2_name=$1
	}
	if(highest3<$5) {
		highest3=$5
		highest3_name=$1
	}
}

END {	print "Top Scorers: "
	print "Subject_1 -> " highest1_name " " highest1
	print "Subject_2 -> " highest2_name " " highest2
	print "Subject_3 -> " highest3_name  " " highest3
}
