set terminal pdfcairo enhanced mono font "Times New Roman,16" size 5,3.5
set output "rb-bw.pdf"
set style data lines
set ylabel '写带宽（MB/s）'
set yrange [16:4096]
set logscale y 2
set xrange [7:8193]
set xlabel '写请求大小（B）'
set logscale x 4
set key right maxrows 3 spacing 1.25
plot 'rb-bw.data' using 1:2 axes x1y1 with linespoints ls 5 title "理想DRAM", \
    '' using 1:3 axes x1y1 with linespoints ls 4 title "理想NVM", \
    '' using 1:4 axes x1y1 with linespoints ls 2 title "日志", \
    '' using 1:5 axes x1y1 with linespoints ls 3 title "影子页", \
    '' using 1:6 axes x1y1 with linespoints ls 1 title "ThyNVM"
