#!/usr/bin/gnuplot
cd '/home/guojunshi/vm/result'
reset
set key samplen 1
set ylabel "TIME(s)" center offset 1.5,0
set yrange [0:140]
set style data histogram
set style histogram clustered gap 1
set style fill solid 1 border
set term postscript eps color solid lw 2 'Times_New_Roman' 24
set output 'scan444_time.eps'
plot 'scan444.time' using 2:xticlabels(1) title 'EARN' lc rgb '#3CB371',\
	'' using 3:xticlabels(1) title 'MAX-MIN' lc rgb '#00CED1',\
	'' using 4:xticlabels(1) title 'LRU' lc rgb '#9370DB',\
	'' using 5:xticlabels(1) title 'LFU' lc rgb '#CD853F'
set yrange [80:125]
set ytics 10
set output 'scan444_time_zoom.eps'
replot
set output

set yrange [0:160]
set output 'scan741_time.eps'
plot 'scan741.time' using 2:xticlabels(1) title 'EARN' lc rgb '#3CB371',\
	'' using 3:xticlabels(1) title 'MAX-MIN' lc rgb '#00CED1',\
	'' using 4:xticlabels(1) title 'LRU' lc rgb '#9370DB',\
	'' using 5:xticlabels(1) title 'LFU' lc rgb '#CD853F'
set yrange [80:150]
set output 'scan741_time_zoom.eps'
replot
set output
