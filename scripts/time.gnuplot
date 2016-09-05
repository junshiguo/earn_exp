#!/usr/bin/gnuplot

reset
set key samplen 1
set ylabel "TIME(s)" center offset 1.5,0
set yrange [0:140]
set style data histogram
set style histogram clustered gap 1
set style fill solid 1 border
set term postscript eps color solid lw 2 'Times_New_Roman' 24
set output '../figures/scan444_time.eps'
plot '../results/scan444.time' using 2:xticlabels(1) title 'EARN' lc rgb '#3CB371',\
	'' using 3:xticlabels(1) title 'MAX-MIN' lc rgb '#00CED1',\
	'' using 4:xticlabels(1) title 'LRU' lc rgb '#9370DB',\
	'' using 5:xticlabels(1) title 'LFU' lc rgb '#CD853F'
set yrange [80:125]
set ytics 10
set output '../figures/scan444_time_zoom.eps'
replot
set output

set yrange [0:160]
set output '../figures/scan741_time.eps'
plot '../results/scan741.time' using 2:xticlabels(1) title 'EARN' lc rgb '#3CB371',\
	'' using 3:xticlabels(1) title 'MAX-MIN' lc rgb '#00CED1',\
	'' using 4:xticlabels(1) title 'LRU' lc rgb '#9370DB',\
	'' using 5:xticlabels(1) title 'LFU' lc rgb '#CD853F'
set yrange [80:150]
set output '../figures/scan741_time_zoom.eps'
replot
set output

reset
set key samplen 1
set xlabel "WINDOW SIZE (GB)"
set ylabel "AVERAGE COMPLETION TIME (s)"
set yrange [70:130]
set xrange [0:1000]
set term postscript eps color solid lw 2 'Times_New_Roman' 24
set output "../figures/window_size_time.eps"
plot "../results/window_size.time" using 1:2 with lp pointtype  7 lw 2 lc rgb "#3CB371" title "ROUND",\
	"" using 1:3 with lp pt 7 lw 2 lc rgb "#9370DB" title "ONE" , \
	"" using 1:4 with lp pt 7 lw 2 lc rgb "#CD853F" title "TWO"
set output "../figures/window_size_time_smooth.eps"
plot "../results/window_size.time" using 1:2 smooth csplines lw 2 lc rgb "#3CB371" title "ROUND",\
	"" using 1:2 with points pt 7 lc rgb "#3CB371" notitle,\
	"" using 1:3 smooth csplines lw 2 lc rgb "#9370DB" title "ONE" , \
	"" using 1:3 with points pt 7 lc rgb "#9370DB" notitle,\
	"" using 1:4 smooth csplines lw 2 lc rgb "#CD853F" title "TWO",\
	"" using 1:4 with points pt 7 lc rgb "#CD853F" notitle
set output
