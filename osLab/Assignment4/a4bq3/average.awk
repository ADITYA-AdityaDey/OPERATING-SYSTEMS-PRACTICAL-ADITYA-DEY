#!/usr/bin/awk -f

BEGIN { FS="|" }

NR == 1 { next }  # Skip the first line

NF != 5 { print "Error: invalid input file format. Each line should have 5 fields."; exit 1 }

{ sum = $4 + $5 + $6; count++; avg = sum / 3; printf "Average marks for %s: %.2f\n", $2, avg }
