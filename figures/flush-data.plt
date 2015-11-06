set terminal pdfcairo enhanced mono font "Times New Roman,16" size 5,3.5
set output "flush-data.pdf"
set style data histograms
set style histogram cluster gap 1
set ylabel '平均刷出速率（KB/s）'
set logscale y 2
plot 'flush-data.data' using 2:xtic(1) axes x1y1 fs pattern 4 ls 1 title "Ext4", \
	'' using 3:xtic(1) axes x1y1 fs solid 1 ls 1 title "MobiFS"
