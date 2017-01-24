#!/usr/bin/gnuplot

reset
set yrange [0:730]
set ytics 100
set size 0.85,1
set grid nopolar
set key samplen 1 horizontal left top reverse
set ylabel "TIME(s)" center offset 1.5,0
set style data histogram
set style histogram clustered gap 1
set style fill solid 1 border
set style histogram rowstacked title textcolor lt -1 offset character 0,-1,0
set boxwidth 0.8 relative
set xtics border in scale 0,0 nomirror rotate by -45  autojustify font ",24"
set bmargin 5
set term postscript eps color solid lw 2 'Times_New_Roman' 26
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
set yrange [0:630]
set ytics 100
set size 0.85,1
set grid nopolar
set key samplen 1 horizontal left top reverse
set ylabel "TIME(s)" center offset 1.5,0
set style data histogram
set style histogram clustered gap 1
set style fill solid 1 border
set style histogram rowstacked title textcolor lt -1 offset character 0,-1,0
set boxwidth 0.8 relative
set xtics border in scale 0,0 nomirror rotate by -45  autojustify font ",24"
set bmargin 5
set term postscript eps color solid lw 2 'Times_New_Roman' 26
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


reset
set grid
set key samplen 1
set ylabel "IN-MEMORY PERCENTAGE(%)"
set xlabel "TIME "
set yrange [0:100]
set size 0.8,1
set term postscript eps color solid lw 3 "Times_New_Roman" 34
set ylabel "IN-MEMORY DATA SIZE (GB)"
set yrange [0:80]
set output "../figures/3-2-earn-1000-ds.eps"
plot "../results/3-2/scan-earn2-round-1000.summary" using (($5)/1024/1024/1024) w lp pt 7 ps 2  lc rgb "#3CB371" title "FILE-1", \
	"" using (($6)/1024/1024/1024) w lp pt 9 ps 2 lc rgb "#9370DB" title "FILE-2", \
	"" using (($7)/1024/1024/1024) w lp pt 11 ps 2 lc rgb "#CD853F" title "FILE-3"

set output "../figures/3-2-maxmin-1000-ds.eps"
plot "../results/3-2/scan-maxmin-round-1000-3-2.summary" using (($5)/1024/1024/1024) w lp pt 7 ps 2  lc rgb "#3CB371" title "FILE-1", \
	"" using (($6)/1024/1024/1024) w lp pt 9 ps 2 lc rgb "#9370DB" title "FILE-2", \
	"" using (($7)/1024/1024/1024) w lp pt 11 ps 2 lc rgb "#CD853F" title "FILE-3"
set output
