#!/usr/bin/gnuplot

reset
set size 0.8,1
set key samplen 1 top center horizontal maxcolumn 2 
set ylabel "TIME(s)" center offset 1.5,0
set yrange [0:140]
set style data histogram
set style histogram clustered gap 1
set style fill solid 1 border
set term postscript eps color solid lw 2 'Times_New_Roman' 28
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
set ytics 20
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

reset
set grid nopolar
set key samplen 1 horizontal center top
set ylabel "TIME(s)" center offset 1.5,0
set yrange [0:140]
set style data histogram
set style histogram clustered gap 1
set style fill solid 1 border
set style histogram rowstacked title textcolor lt -1 offset character 0,-1,0
set boxwidth 0.8 relative
set xtics border in scale 0,0 nomirror rotate by -45  autojustify font ",20"
set bmargin 5
set term postscript eps color solid lw 2 'Times_New_Roman' 24
set output "../figures/scan741_time_detail.eps"
plot newhistogram "ROUND", "../results/scan741.time3" using 11:xticlabels(1)  lc rgb '#3CB371' title "FILE-1",\
	"" using 12:xticlabels(1) lc rgb "#9370DB" title "",\
	"" using 13:xticlabels(1) lc rgb "#CD853F" title "",\
	newhistogram "ONE",\
	"" using 14:xticlabels(1)  lc rgb '#3CB371' title "",\
	"" using 15:xticlabels(1) lc rgb "#9370DB" title "FILE-2",\
	"" using 16:xticlabels(1) lc rgb "#CD853F" title "",\
	newhistogram "TWO",\
	"" using 17:xticlabels(1)  lc rgb '#3CB371' title "",\
	"" using 18:xticlabels(1) lc rgb "#9370DB" title "",\
	"" using 19:xticlabels(1) lc rgb "#CD853F" title "FILE-3"
set output

reset 
set grid nopolar
set key samplen 1 horizontal center top width 3
set ylabel "TIME (s)" center offset 1.5,0
set style data histogram
set style histogram clustered gap 1
set style fill solid 1 border
set boxwidth 1 relative
set bmargin 5
set xtics border in scale 0,0 nomirror rotate by -45  autojustify font ",20"
set term postscript eps color solid lw 2 'Times_New_Roman' 24
set output "../figures/scan741_time_seperate.eps"
plot newhistogram "ROUND", "../results/scan741.time2" using  2:xticlabels(1) lc rgb "#3CB371" title "EARN",\
	"" using 5:xticlabels(1) lc rgb "#CD853F" title "",\
	newhistogram "ONE",\
	"" using  3:xticlabels(1) lc rgb "#3CB371" title "",\
	"" using 6:xticlabels(1) lc rgb "#CD853F" title "",\
	newhistogram "TWO",\
	"" using  4:xticlabels(1) lc rgb "#3CB371" title "",\
	"" using 7:xticlabels(1) lc rgb "#CD853F" title "MAX-MIN"
set output

reset
set yrange [0:720]
set ytics 100
set size 0.8,1
set grid nopolar
set key samplen 1 horizontal left top
set ylabel "TIME(s)" center offset 1.5,0
set style data histogram
set style histogram clustered gap 1
set style fill solid 1 border
set style histogram rowstacked title textcolor lt -1 offset character 0,-1,0
set boxwidth 0.8 relative
set xtics border in scale 0,0 nomirror rotate by -45  autojustify font ",20"
set bmargin 5
set term postscript eps color solid lw 2 'Times_New_Roman' 24
set output "../figures/scan741_time_all.eps"
plot newhistogram "ROUND", "../results/scan741.time3" using ($2):xticlabels(1)  lc rgb '#3CB371' title "FILE-1",\
	"" using ($3):xticlabels(1) lc rgb "#9370DB" title "",\
	"" using ($4):xticlabels(1) lc rgb "#CD853F" title "",\
	newhistogram "ONE",\
	"" using ($5 * 2):xticlabels(1)  lc rgb '#3CB371' title "",\
	"" using 6:xticlabels(1) lc rgb "#9370DB" title "FILE-2",\
	"" using 7:xticlabels(1) lc rgb "#CD853F" title "",\
	newhistogram "TWO",\
	"" using ($8 * 2):xticlabels(1)  lc rgb '#3CB371' title "",\
	"" using ($9 * 2):xticlabels(1) lc rgb "#9370DB" title "",\
	"" using 10:xticlabels(1) lc rgb "#CD853F" title "FILE-3"
set output


reset
set yrange [0:620]
set ytics 100
set size 0.8,1
set grid nopolar
set key samplen 1 horizontal left top
set ylabel "TIME(s)" center offset 1.5,0
set style data histogram
set style histogram clustered gap 1
set style fill solid 1 border
set style histogram rowstacked title textcolor lt -1 offset character 0,-1,0
set boxwidth 0.8 relative
set xtics border in scale 0,0 nomirror rotate by -45  autojustify font ",20"
set bmargin 5
set term postscript eps color solid lw 2 'Times_New_Roman' 24
set output "../figures/scan444_time_all.eps"
plot newhistogram "ROUND", "../results/scan444.time3" using ($2):xticlabels(1)  lc rgb '#3CB371' title "FILE-1",\
	"" using ($3):xticlabels(1) lc rgb "#9370DB" title "",\
	"" using ($4):xticlabels(1) lc rgb "#CD853F" title "",\
	newhistogram "ONE",\
	"" using ($5 * 2):xticlabels(1)  lc rgb '#3CB371' title "",\
	"" using 6:xticlabels(1) lc rgb "#9370DB" title "FILE-2",\
	"" using 7:xticlabels(1) lc rgb "#CD853F" title "",\
	newhistogram "TWO",\
	"" using ($8 * 2):xticlabels(1)  lc rgb '#3CB371' title "",\
	"" using ($9 * 2):xticlabels(1) lc rgb "#9370DB" title "",\
	"" using 10:xticlabels(1) lc rgb "#CD853F" title "FILE-3"
set output
