gmt begin gmt_wind_1 jpg
gmt set GMT_THEME cookbook
psbasemap -JX20/5 -R0/5/0/2 -Bxaf1 -BWS
psxy wind_1.dat -SV0.1c/0.4c/0.2c -Gred -Wthinnest ^
-Bxf30+l"time" -B+t"Plot Quivers"
gmt end show
