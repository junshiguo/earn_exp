#!/usr/bin/gnuplot

reset
set key samplen 1 horizontal center top
set ylabel "# OF BLOCKS PROCESSED IN MEMORY (AVG)"
set style data histogram
set style histogram  rowstacked
set boxwidth 0.8 relative
set style fill solid 1 border
set term postscript eps color solid lw 2 'Times_New_Roman' 26
set output "../figures/block_count_avg_round.eps"
plot "../results/scan444/avg_block_access_count" using 2:xticlabels(1) lc rgb '#3CB371' title "LOCAL",\
	"" using 3:xticlabels(1) lc rgb '#9370DB' title "REMOTE",\
	"" using 4:xticlabels(1) lc rgb '#CD853F' title "UFS"

set output "../figures/block_count_avg_one.eps"
plot "../results/scan444/avg_block_access_count" using 5:xticlabels(1) lc rgb '#3CB371' title "LOCAL",\
	"" using 6:xticlabels(1) lc rgb '#9370DB' title "REMOTE",\
	"" using 7:xticlabels(1) lc rgb '#CD853F' title "UFS"

set output "../figures/block_count_avg_two.eps"
plot "../results/scan444/avg_block_access_count" using 8:xticlabels(1) lc rgb '#3CB371' title "LOCAL",\
	"" using 9:xticlabels(1) lc rgb '#9370DB' title "REMOTE",\
	"" using 10:xticlabels(1) lc rgb '#CD853F' title "UFS"
set output

set grid nopolar
set style data histograms
set key horizontal top center  width 3
set output "../figures/block_count_avg.eps"
set xtics border in scale 0,0 nomirror rotate by -45  autojustify font ",20"
set ylabel offset 0.5,-2
set size 1.5,1.2
set style histogram rowstacked title textcolor lt -1 offset character 0,-1,0
set bmargin 5
plot newhistogram "ROUND", "../results/scan444/avg_block_access_count" using 2:xticlabels(1) lc rgb '#3CB371' title "LOCAL",\
	"" using 3:xticlabels(1) lc rgb '#9370DB' title "",\
	"" using 4:xticlabels(1) lc rgb '#CD853F' title "", \
	newhistogram "ONE",\
	"../results/scan444/avg_block_access_count" using 5:xticlabels(1) lc rgb '#3CB371' notitle,\
	"" using 6:xticlabels(1) lc rgb '#9370DB' title "REMOTE",\
	"" using 7:xticlabels(1) lc rgb '#CD853F' notitle, \
	newhistogram "TWO",\
	"../results/scan444/avg_block_access_count" using 8:xticlabels(1) lc rgb '#3CB371' notitle,\
	"" using 9:xticlabels(1) lc rgb '#9370DB' notitle,\
	"" using 10:xticlabels(1) lc rgb '#CD853F' title "UFS"
set output

reset
set style data histogram
set style histogram rowstacked
set style fill solid 1 border
set key horizontal top center samplen 1 font ",20"
set xlabel "Experiments"
set ylabel "# of Blocks"
set size 0.8,1
set boxwidth 1
set term postscript eps color solid lw 2 'Times_New_Roman' 26
set output "../figures/3-2_block.eps"
plot "../results/3-2.block" using 2:xticlabels(1) lc rgb '#3CB371' title "LOCAL",\
	"" using 3:xticlabels(1) lc rgb '#9370DB' title "REMOTE",\
	"" using 4:xticlabels(1) lc rgb '#CD853F' title "UFS"
set output
