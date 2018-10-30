gmt psbasemap -R0/1/0/1 -Jx1 -B1 > test.ps
gmt psconvert test.ps -P -Tf
