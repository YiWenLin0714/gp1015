out_ps=wave.ps
in_data=wave\(3\).txt

psxy -R0/120/-150000/170000 -B20/50000NSWE -Jx0.1/0.00001 $in_data -W1 -Xc -Yc -K>$out_ps
echo 28.378000 167232.687500| psxy -J -B -R -O -Sc0.1 -W1 >>$out_ps
