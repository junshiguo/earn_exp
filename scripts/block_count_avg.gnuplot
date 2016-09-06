#!/usr/bin/gnuplot

reset
set key samplen 1 horizontal center top
set ylabel "# OF BLOCKS PROCESSED IN MEMORY (AVG)"
set style data histogram
set style histogram  rowstacked
set boxwidth 0.8 relative
set style fill solid 1 border
set term postscript eps color solid lw 2 'Times_New_Roman' 24
set output "../figures/block_count_avg_round.eps"
plot "../results/scan444/avg_block_access_count" using 2:xticlabels(1) lc rgb '#3CB371' title "MEM",\
	"" using 3:xticlabels(1) lc rgb '#9370DB' title "REMOTE",\
	"" using 4:xticlabels(1) lc rgb '#CD853F' title "UFS"

set output "../figures/block_count_avg_one.eps"
plot "../results/scan444/avg_block_access_count" using 5:xticlabels(1) lc rgb '#3CB371' title "MEM",\
	"" using 6:xticlabels(1) lc rgb '#9370DB' title "REMOTE",\
	"" using 7:xticlabels(1) lc rgb '#CD853F' title "UFS"

set output "../figures/block_count_avg_two.eps"
plot "../results/scan444/avg_block_access_count" using 8:xticlabels(1) lc rgb '#3CB371' title "MEM",\
	"" using 9:xticlabels(1) lc rgb '#9370DB' title "REMOTE",\
	"" using 10:xticlabels(1) lc rgb '#CD853F' title "UFS"
set output
