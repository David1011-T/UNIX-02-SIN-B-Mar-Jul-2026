awk -F',' 'NR > 1 {seen[$1]=1} END {for (student in seen) count++; print count}' Lab03-data.csv
