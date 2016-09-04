#!/usr/bin/gnuplot
reset
set grid
set key samplen 1
set ylabel "IN-MEMORY PERCENTAGE(%)"
set xlabel "TIME "
set yrange [0:100]
set term postscript eps color solid lw 3 'Times_New_Roman' 24
set output "../figures/3-1-earn-1000-percent.eps"
plot "../results/3-1/scan-earn2-round-1000.summary" using 2  smooth bezier  title "FILE-1" lc rgb "#3CB371", \
	"" using 3 smooth bezier title "FILE-2" lc rgb '#9370DB', \
	"" using 4 smooth bezier title "FILE-3" lc rgb '#CD853F'

set output "../figures/3-1-maxmin-1000-percent.eps"
plot "../results/3-1/scan-maxmin-round-1000-3-1.summary" using 2  smooth bezier  title "FILE-1" lc rgb "#3CB371", \
	"" using 3 smooth bezier title "FILE-2" lc rgb '#9370DB', \
	"" using 4 smooth bezier title "FILE-3" lc rgb '#CD853F'

set output "../figures/3-2-earn-1000-percent.eps"
plot "../results/3-2/scan-earn2-round-1000.summary" using 2  smooth bezier  title "FILE-1" lc rgb "#3CB371", \
	"" using 3 smooth bezier title "FILE-2" lc rgb '#9370DB', \
	"" using 4 smooth bezier title "FILE-3" lc rgb '#CD853F'

set output "../figures/3-2-maxmin-1000-percent.eps"
plot "../results/3-2/scan-maxmin-round-1000-3-2.summary" using 2  smooth bezier  title "FILE-1" lc rgb "#3CB371", \
	"" using 3 smooth bezier title "FILE-2" lc rgb '#9370DB', \
	"" using 4 smooth bezier title "FILE-3" lc rgb '#CD853F'
set output



set ylabel "IN-MEMORY DATA SIZE (GB)"
set yrange [0:80]
set output "../figures/3-1-earn-1000-ds.eps"
plot "../results/3-1/scan-earn2-round-1000.summary" using (($5)/1024/1024/1024) smooth bezier  title "FILE-1" lc rgb "#3CB371", \
	"" using (($6)/1024/1024/1024) smooth bezier title "FILE-2" lc rgb '#9370DB', \
	"" using (($7)/1024/1024/1024) smooth bezier title "FILE-3" lc rgb '#CD853F'

set output "../figures/3-1-maxmin-1000-ds.eps"
plot "../results/3-1/scan-maxmin-round-1000-3-1.summary" using (($5)/1024/1024/1024) smooth bezier  title "FILE-1" lc rgb "#3CB371", \
	"" using (($6)/1024/1024/1024) smooth bezier title "FILE-2" lc rgb '#9370DB', \
	"" using (($7)/1024/1024/1024) smooth bezier title "FILE-3" lc rgb '#CD853F'

set output "../figures/3-2-earn-1000-ds.eps"
plot "../results/3-2/scan-earn2-round-1000.summary" using (($5)/1024/1024/1024) smooth bezier  title "FILE-1" lc rgb "#3CB371", \
	"" using (($6)/1024/1024/1024) smooth bezier title "FILE-2" lc rgb '#9370DB', \
	"" using (($7)/1024/1024/1024) smooth bezier title "FILE-3" lc rgb '#CD853F'

set output "../figures/3-2-maxmin-1000-ds.eps"
plot "../results/3-2/scan-maxmin-round-1000-3-2.summary" using (($5)/1024/1024/1024) smooth bezier  title "FILE-1" lc rgb "#3CB371", \
	"" using (($6)/1024/1024/1024) smooth bezier title "FILE-2" lc rgb '#9370DB', \
	"" using (($7)/1024/1024/1024) smooth bezier title "FILE-3" lc rgb '#CD853F'
set output