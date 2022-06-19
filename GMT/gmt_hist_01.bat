gmt begin GMT_HIST_01 jpg
gmt set GMT_THEME cookbook
gmt histogram eq.dat -R0/35/0/600 -B -JX8c/5c ^
-Bxa7+l"Depth/km" -Bya100f50+l"Counts" ^
-BWSne -D+f10p,4+o8p -W5+b -L2p -i2
gmt end show
