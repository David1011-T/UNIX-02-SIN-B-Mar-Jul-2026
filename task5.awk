BEGIN {
    FS = ","
    print "Name Low High Average"
}
NR > 1 {
    assign = $3
    score = $4
    
    # Initialize min and max if not seen yet, or update them
    if (!(assign in min) || score < min[assign]) {
        min[assign] = score
    }
    if (!(assign in max) || score > max[assign]) {
        max[assign] = score
    }
    
    sum[assign] += score
    count[assign]++
}
END {
    for (a in count) {
        printf "%s %d %d %.2f\n", a, min[a], max[a], sum[a]/count[a]
    }
}
