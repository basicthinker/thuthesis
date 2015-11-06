set terminal pdfcairo enhanced mono font "Times New Roman,16" size 5,3.5

set output "ada-int.pdf"
set style data histograms
set style histogram cluster gap 1
set ylabel '平均间隔（s）'
set logscale y 2
set yrange [0.2:120]
set key below box
plot 'ada-int.data' using 2:xtic(1) fs pattern 4 ls 1 title "Ext4",\
	'' using 3:xtic(1) fs solid 1 ls 1 title "MobiFS"
