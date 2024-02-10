awk '
{
    for (i = 1; i <= NF; i++) {
        if (NR == 1) {
            matrix[i] = $i;
        }
        else {
            matrix[i] = matrix[i] " " $i;
        }
    }
}
END {
    for (i = 1; i <= NF; i++) {
        print matrix[i];
        print "new " $i;
    }
} ' file.txt