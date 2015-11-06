set terminal pdfcairo enhanced mono font "Times New Roman,16" size 5,3.5
set output "bench-item.pdf"
set style data histograms
set style fill pattern 1
set style histogram cluster gap 2

set ylabel 'I/O吞吐率（MB/s）'
set logscale y 10
set yrange [0.1:]
set ytics nomirror

set y2label '每秒完成事务数（TPS）'
set logscale y2 2
set y2rang [1:60000]
set y2tics

set key below box
plot 'bench-item.data' using 2:xtic(1) axes x1y1 ls 1 title "顺序写", \
    '' using 3:xtic(1) axes x1y1 ls 1 title "顺序读", \
    '' using 4:xtic(1) axes x1y2 ls 1 title "随机写（TPS）", \
    '' using 5:xtic(1) axes x1y2 ls 1 title "随机读（TPS）", \
    '' using 6:xtic(1) axes x1y2 ls 1 title "插入（TPS）", \
    '' using 7:xtic(1) axes x1y2 ls 1 title "更新（TPS）", \
    '' using 8:xtic(1) axes x1y2 ls 1 title "删除（TPS）"
