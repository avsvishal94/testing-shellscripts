#!/bin/bash
# awk logic to change the format
awk 'BEGIN {FS=","; OFS="\t"} {print $1, $2, $3, $4, $5, $6, $7, $8}' users.csv > output.log

awk 'BEGIN {
    print "<html>"
    print "<head>"
    print "<style>"
    print "table {border-collapse: collapse; width: 50%;}"
    print "th, td {border: 1px solid black; padding: 8px; text-align: left;}"
    print "th {background-color: #f2f2f2;}"
    print "</style>"
    print "</head>"
    print "<body>"
    print "<table>"
    FS=" "
    OFS="</td><td>"
}
{
    print "<tr><td>" $1, $2, $3, $4, $5, $6, $7, $8 "</td></tr>"
}
END {
    print "</table>"
    print "</body>"
    print "</html>"
}' output.log > output.html

