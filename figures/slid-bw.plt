set terminal pdfcairo enhanced mono font "Times New Roman,16" size 5,3.5

set output "slid-bw.pdf"

set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill pattern 0

set ylabel 'NVM写入量（MB）'
set yrange [0:1270]
set ytic 256 nomirror
set xtic nomirror
set x2rang [0:4]
set y2label '% 检查点生成时间'
set y2range [0:100]
set y2tic

set key below box spacing 1.25
plot 'slid-bw.data' using 2:xtic(1) axes x1y1 ls 1 title "CPU", \
    '' using 3:xtic(1) axes x1y1 ls 1 title "数据迁移", \
    '' using 4:xtic(1) axes x1y1 ls 1 title "检查点生成", \
    'slid-ckpt.data' axes x2y2 with linespoints lt -1 pt 5 title "% 检查点生成时间"

