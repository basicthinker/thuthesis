set terminal pdfcairo enhanced mono font "Times New Roman,16" size 5,3.5

set output "rb-thr.pdf"
set style data lines
set ylabel '事务吞吐率（KTPS）'
set yrange [10:180]
set logscale y 4
set xrange [7:8193]
set logscale x 4
set xlabel '写请求大小（B）'
set key left bottom maxrows 3 spacing 1.25
plot 'rb-thr.data' using 1:2 axes x1y1 with linespoints ls 5 title "理想DRAM", \
    '' using 1:3 axes x1y1 with linespoints ls 4 title "理想NVM", \
    '' using 1:4 axes x1y1 with linespoints ls 2 title "日志", \
    '' using 1:5 axes x1y1 with linespoints ls 3 title "影子页", \
    '' using 1:6 axes x1y1 with linespoints ls 1 title "ThyNVM"
