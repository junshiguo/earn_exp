#!/usr/bin/gnuplot
reset
set grid
set key samplen 1
set ylabel "IN-MEMORY PERCENTAGE(%)"
set xlabel "TIME "
set yrange [0:100]
set term postscript eps color solid lw 3 "Times_New_Roman" 24
set output "../figures/3-1-earn-1000-percent.eps"
plot "../results/3-1/scan-earn2-round-1000.summary" using 2 w lp pt 7 ps 2 lc rgb "#3CB371" title "FILE-1", \
	"" using 3 w lp pt 9 ps 2 lc rgb "#9370DB" title "FILE-2", \
	"" using 4 w lp pt 11 ps 2 lc rgb "#CD853F" title "FILE-3"

set output "../figures/3-1-maxmin-1000-percent.eps"
plot "../results/3-1/scan-maxmin-round-1000-3-1.summary" using 2  w lp pt 7 ps 2  lc rgb "#3CB371" title "FILE-1", \
	"" using 3 w lp pt 9 ps 2 lc rgb "#9370DB" title "FILE-2", \
	"" using 4 w lp pt 11 ps 2 lc rgb "#CD853F" title "FILE-3"

set output "../figures/3-2-earn-1000-percent.eps"
plot "../results/3-2/scan-earn2-round-1000.summary" using 2  w lp pt 7 ps 2 lc rgb "#3CB371"  title "FILE-1", \
	"" using 3 w lp pt 9 ps 2 lc rgb "#9370DB" title "FILE-2", \
	"" using 4 w lp pt 11 ps 2 lc rgb "#CD853F" title "FILE-3"

set output "../figures/3-2-maxmin-1000-percent.eps"
plot "../results/3-2/scan-maxmin-round-1000-3-2.summary" using 2  w lp pt 7 ps 2  lc rgb "#3CB371" title "FILE-1", \
	"" using 3 w lp pt 9 ps 2 lc rgb "#9370DB" title "FILE-2", \
	"" using 4 w lp pt 11 ps 2 lc rgb "#CD853F" title "FILE-3"
set output

set output "../figures/3-1-earn-1000-percent_smooth.eps"
plot "../results/3-1/scan-earn2-round-1000.summary" using 2  smooth csplines  lc rgb "#3CB371" title "FILE-1", \
	"" using 3 smooth csplines lc rgb "#9370DB" title "FILE-2", \
	"" using 4 smooth csplines lc rgb "#CD853F" title "FILE-3",\
	"" using 2  w p pt 7 ps 2  lc rgb "#3CB371" title "FILE-1", \
	"" using 3 w p pt 9 ps 2 lc rgb "#9370DB" title "FILE-2", \
	"" using 4 w p pt 11 ps 2 lc rgb "#CD853F" title "FILE-3"

set output "../figures/3-1-maxmin-1000-percent_smooth.eps"
plot "../results/3-1/scan-maxmin-round-1000-3-1.summary" using 2  smooth csplines  lc rgb "#3CB371" title "FILE-1", \
	"" using 3 smooth csplines lc rgb "#9370DB" title "FILE-2", \
	"" using 4 smooth csplines lc rgb "#CD853F" title "FILE-3",\
	"" using 2  w p pt 7 ps 2  lc rgb "#3CB371" title "FILE-1", \
	"" using 3 w p pt 9 ps 2 lc rgb "#9370DB" title "FILE-2", \
	"" using 4 w p pt 11 ps 2 lc rgb "#CD853F" title "FILE-3"

set output "../figures/3-2-earn-1000-percent_smooth.eps"
plot "../results/3-2/scan-earn2-round-1000.summary" using 2  smooth csplines  lc rgb "#3CB371" title "FILE-1", \
	"" using 3 smooth csplines lc rgb "#9370DB" title "FILE-2", \
	"" using 4 smooth csplines lc rgb "#CD853F" title "FILE-3",\
	"" using 2  w p pt 7 ps 2  lc rgb "#3CB371" title "FILE-1", \
	"" using 3 w p pt 9 ps 2 lc rgb "#9370DB" title "FILE-2", \
	"" using 4 w p pt 11 ps 2 lc rgb "#CD853F" title "FILE-3"

set output "../figures/3-2-maxmin-1000-percent_smooth.eps"
plot "../results/3-2/scan-maxmin-round-1000-3-2.summary" using 2  smooth csplines  lc rgb "#3CB371" title "FILE-1", \
	"" using 3 smooth csplines lc rgb "#9370DB" title "FILE-2", \
	"" using 4 smooth csplines lc rgb "#CD853F" title "FILE-3",\
	"" using 2  w p pt 7 ps 2  lc rgb "#3CB371" title "FILE-1", \
	"" using 3 w p pt 9 ps 2 lc rgb "#9370DB" title "FILE-2", \
	"" using 4 w p pt 11 ps 2 lc rgb "#CD853F" title "FILE-3"
set output



set ylabel "IN-MEMORY DATA SIZE (GB)"
set yrange [0:80]
set output "../figures/3-1-earn-1000-ds.eps"
plot "../results/3-1/scan-earn2-round-1000.summary" using (($5)/1024/1024/1024) w lp pt 7 ps 2   lc rgb "#3CB371" title "FILE-1", \
	"" using (($6)/1024/1024/1024) w lp pt 9 ps 2 lc rgb "#9370DB" title "FILE-2", \
	"" using (($7)/1024/1024/1024) w lp pt 11 ps 2 lc rgb "#CD853F" title "FILE-3"

set output "../figures/3-1-maxmin-1000-ds.eps"
plot "../results/3-1/scan-maxmin-round-1000-3-1.summary" using (($5)/1024/1024/1024) w lp pt 7 ps 2  lc rgb "#3CB371" title "FILE-1", \
	"" using (($6)/1024/1024/1024) w lp pt 9 ps 2 lc rgb "#9370DB" title "FILE-2", \
	"" using (($7)/1024/1024/1024) w lp pt 11 ps 2 lc rgb "#CD853F" title "FILE-3"

set output "../figures/3-2-earn-1000-ds.eps"
plot "../results/3-2/scan-earn2-round-1000.summary" using (($5)/1024/1024/1024) w lp pt 7 ps 2  lc rgb "#3CB371" title "FILE-1", \
	"" using (($6)/1024/1024/1024) w lp pt 9 ps 2 lc rgb "#9370DB" title "FILE-2", \
	"" using (($7)/1024/1024/1024) w lp pt 11 ps 2 lc rgb "#CD853F" title "FILE-3"

set output "../figures/3-2-maxmin-1000-ds.eps"
plot "../results/3-2/scan-maxmin-round-1000-3-2.summary" using (($5)/1024/1024/1024) w lp pt 7 ps 2  lc rgb "#3CB371" title "FILE-1", \
	"" using (($6)/1024/1024/1024) w lp pt 9 ps 2 lc rgb "#9370DB" title "FILE-2", \
	"" using (($7)/1024/1024/1024) w lp pt 11 ps 2 lc rgb "#CD853F" title "FILE-3"
set output


set output "../figures/3-1-earn-1000-ds_smooth.eps"
plot "../results/3-1/scan-earn2-round-1000.summary" using (($5)/1024/1024/1024) smooth csplines  lc rgb "#3CB371" title "FILE-1", \
	"" using (($6)/1024/1024/1024) smooth csplines lc rgb "#9370DB" title "FILE-2", \
	"" using (($7)/1024/1024/1024) smooth csplines lc rgb "#CD853F" title "FILE-3",\
	"" using (($5)/1024/1024/1024)  w p pt 7 ps 2  lc rgb "#3CB371" title "FILE-1", \
	"" using (($6)/1024/1024/1024)  w p pt 9 ps 2 lc rgb "#9370DB" title "FILE-2", \
	"" using (($7)/1024/1024/1024) w p pt 11 ps 2 lc rgb "#CD853F" title "FILE-3"

set output "../figures/3-1-maxmin-1000-ds_smooth.eps"
plot "../results/3-1/scan-maxmin-round-1000-3-1.summary" using (($5)/1024/1024/1024) smooth csplines  lc rgb "#3CB371" title "FILE-1", \
	"" using (($6)/1024/1024/1024) smooth csplines lc rgb "#9370DB" title "FILE-2", \
	"" using (($7)/1024/1024/1024) smooth csplines lc rgb "#CD853F" title "FILE-3",\
	"" using (($5)/1024/1024/1024)  w p pt 7 ps 2  lc rgb "#3CB371" title "FILE-1", \
	"" using (($6)/1024/1024/1024)  w p pt 9 ps 2 lc rgb "#9370DB" title "FILE-2", \
	"" using (($7)/1024/1024/1024) w p pt 11 ps 2 lc rgb "#CD853F" title "FILE-3"

set output "../figures/3-2-earn-1000-ds_smooth.eps"
plot "../results/3-2/scan-earn2-round-1000.summary" using (($5)/1024/1024/1024) smooth csplines  lc rgb "#3CB371" title "FILE-1", \
	"" using (($6)/1024/1024/1024) smooth csplines lc rgb "#9370DB" title "FILE-2", \
	"" using (($7)/1024/1024/1024) smooth csplines lc rgb "#CD853F" title "FILE-3",\
	"" using (($5)/1024/1024/1024)  w p pt 7 ps 2  lc rgb "#3CB371" title "FILE-1", \
	"" using (($6)/1024/1024/1024)  w p pt 9 ps 2 lc rgb "#9370DB" title "FILE-2", \
	"" using (($7)/1024/1024/1024) w p pt 11 ps 2 lc rgb "#CD853F" title "FILE-3"

set output "../figures/3-2-maxmin-1000-ds_smooth.eps"
plot "../results/3-2/scan-maxmin-round-1000-3-2.summary" using (($5)/1024/1024/1024) smooth csplines  lc rgb "#3CB371" title "FILE-1", \
	"" using (($6)/1024/1024/1024) smooth csplines lc rgb "#9370DB" title "FILE-2", \
	"" using (($7)/1024/1024/1024) smooth csplines lc rgb "#CD853F" title "FILE-3",\
	"" using (($5)/1024/1024/1024)  w p pt 7 ps 2  lc rgb "#3CB371" title "FILE-1", \
	"" using (($6)/1024/1024/1024)  w p pt 9 ps 2 lc rgb "#9370DB" title "FILE-2", \
	"" using (($7)/1024/1024/1024) w p pt 11 ps 2 lc rgb "#CD853F" title "FILE-3"
set output