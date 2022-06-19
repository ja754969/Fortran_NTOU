gmt begin GMT_PT_cos_1 jpg
gmt set GMT_THEME cookbook
gmt plot x_cosx.dat -R0/10/-2/2 -Jx1i -B -Wthinner ^
-Bxaf+l"X-axis" -By+l"Y-axis" -B+t"Plot cosx" 
gmt end show
