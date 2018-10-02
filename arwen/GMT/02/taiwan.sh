psbasemap -Ba1f1/a1f1::EwNs -Jm2 -R119/123/21/26 -G0/250/250 -K -Yc -Xc > report.ps
pscoast -R119/123/21/26 -Jm2 -Ba1f1/a1f1::EwNs -W1 -Di -G250/250/0 -O -K >> report.ps
#psxy eq.list -J -B -R -O -Sc0.01 -W0.01 -K>> report.ps
echo 121.29 22.83 | psxy -R119/123/21/26 -Jm2 -O -Sa1 -G255/0/0 -Ba1f1/a1f1::EwNs -K>> report.ps
echo 121.29 22.83 12 0 0 CM M:4.6 Depth:5.9km| pstext -Jm2 -Ba1f1/a1f1::EwNs -R119/123/21/26 -O -K >>report.ps
makecpt -T0/315/15 -Crainbow -Z > depth.cpt
awk '{ if ($4<3) print $1, $2, $3}' eq.list|psxy -J -B -R -O -Sc0.01 -K -Cdepth.cpt>> report.ps
awk '{ if ($4>=3 && $4<4) print $1, $2, $3}' eq.list|psxy -J -B -R -O -Sc0.1 -K -Cdepth.cpt>> report.ps
awk '{ if ($4>=4 && $4<5) print $1, $2, $3}' eq.list|psxy -J -B -R -O -Sc0.3 -K -Cdepth.cpt>> report.ps
awk '{ if ($4>=5) print $1, $2, $3}' eq.list|psxy -J -B -R -O -Sc0.6 -Cdepth.cpt>> report.ps

