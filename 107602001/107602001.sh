gmt set PS_MEDIA A4

gmt psbasemap -R119/123/21/26 -Jm4 -B1 -K -Xc -Yc -P > 107602001.ps
gmt pscoast -R -J -Df -Ia -W1 -O -K >> 107602001.ps
gmt psscale -Caqi.cpt -Dx8c/-1.7c+w12c/0.5c+jTC+h -Bx50+l"Air Quality Index" -O -K >> 107602001.ps
awk -F'[,]' 'NR>1 {print $22, $21, $3}' AQI_20181112191430.csv | gmt psxy -R -J -Sc0.25 -Caqi.cpt -W -O -K >>107602001.ps
echo 121.00 26.50 Taiwan Air Quality Map | gmt pstext -R -J -N -O -K -F+f30 >>107602001.ps
echo 121.203986 24.95278 | gmt psxy -R -J -Sa0.5 -G255/0/0 -O -K>> 107602001.ps
gmt psbasemap -R0/365/0/200 -JX12/1.5 -B50/50nSwE -K -P -O -X2 -Y1 >> 107602001.ps
awk '{print $1,$2}' Pingzhen.txt | gmt psxy -J -R -O -W0.01 -K>> 107602001.ps
awk '{print $1,$2}' MA5.txt | gmt psxy -J -R -O -W1,red -K  >> 107602001.ps
awk '{print $1,$2}' MA30.txt | gmt psxy -J -R -O -W1,green >> 107602001.ps