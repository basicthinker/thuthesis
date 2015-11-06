set terminal pdfcairo enhanced color dashed font "Times New Roman,16" size 5,3.5

set output "nvme-bandwidth.pdf"
set ylabel '带宽消耗（MB/s）'
set yrange [32:1024]
set xrange [0.25:256]
set logscale x 4
set logscale y 2
set xlabel '写请求大小（KB）'
set key right bottom
plot 'nvme-bandwidth.data' using 1:2 with lines lw 3 lt 3 title "单线程", \
    '' using 1:3  with lines lw 3 lt 1 title "4个线程", \
    '' using 1:4  with lines lw 3 lt 7 title "16个线程"
