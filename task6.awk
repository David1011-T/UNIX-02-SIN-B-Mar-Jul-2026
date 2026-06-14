BEGIN {
    FS = ","
    print "Name Percentage Grade"
}
NR > 1 {
    earned[$1] += $4
    possible[$1] += $5
}
END {
    for (student in earned) {
        pct = (earned[student] / possible[student]) * 100
        
        if (pct >= 90) {
            grade = "A"
        } else if (pct >= 80) {
            grade = "B"
        } else if (pct >= 70) {
            grade = "C"
        } else if (pct >= 60) {
            grade = "D"
        } else {
            grade = "E"
        }
        
        printf "%-10s %.2f %s\n", student, pct, grade
    }
}