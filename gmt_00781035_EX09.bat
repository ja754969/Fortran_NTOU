gmt begin FT_00781035_EX09_jpg jpg
gmt set GMT_THEME cookbook
gmt plot FT_00781035_EX09_1.out -R0/11/1000/1020 -JX15c/7c -Bxa2+l"date" ^
-Bya5f1+l"Pressure [hPa]" -BWS+t"00781035" -Wthicker
gmt pstext EX09_1.txt
gmt plot FT_00781035_EX09_2.out -R0/11/15/25 -JX15c/7c -Bya2f2+l"Ta [^oC]" -BnE
gmt pstext EX09_2.txt
gmt end show
