read -p "Enter the Name of the Subject:" subname

echo

awk -v subject="$subname" -f avg.awk marks.dat.txt

