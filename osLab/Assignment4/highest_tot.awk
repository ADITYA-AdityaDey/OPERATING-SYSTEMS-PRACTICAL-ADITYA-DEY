#!/usr/bin/awk -f

# usage: ./highest_tot.awk inFile

BEGIN {FS = "~"}{total = $3 + $4 + $5; if (total > max_total) {max_total = total; name = $1}}; END {print "Student with highest total marks:", name}
