set terminal pdfcairo enhanced mono font "Times New Roman,16" size 5,4

set output "time.pdf"
set style data histograms
set style fill pattern 1
set style histogram cluster gap 1
set ylabel '相对执行时间'
set yrange [0:2.1]
set key below box spacing 1.25
plot 'time.data' using 2:xtic(1) axes x1y1 ls 1 title "理想化DRAM", \
    '' using 3:xtic(1) axes x1y1 ls 1 title "理想化NVM", \
    '' using 4:xtic(1) axes x1y1 ls 1 title "日志", \
    '' using 5:xtic(1) axes x1y1 ls 1 title "影子页", \
    '' using 6:xtic(1) axes x1y1 ls 1 title "ThyNVM", \
    1 axes x1y1 ls 1 title "" with lines
