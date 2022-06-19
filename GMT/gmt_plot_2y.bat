gmt begin GMT_PLOT_2y jpg
gmt plot x_sinx_y1.dat -R0/10/-2/2 -JX15c/7c -BWeSn -Wthinner ^
-Bxa2+l"X-axis" -By+l"Y-axis" -B+t"Plot double Y"
gmt plot x_sinx_y2.dat -R0/10/0/100 -JX15c/7c -Bya20f20+l"Y2-axis" -BwEsn
gmt end show
