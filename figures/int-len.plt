set terminal pdfcairo enhanced mono font "Times New Roman,16" size 5,3.5

set output "int-len.pdf"
set style data histograms
set style fill pattern 1
set style histogram cluster gap 1
set ylabel '平均长度（s）'
set key below box spacing 1.25
plot 'int-stat.data' using 3:xtic(1) axes x1y1 ls 1 title "最近最小模型", \
    '' using 5:xtic(1) axes x1y1 ls 1 title "最近平均模型", \
    '' using 7:xtic(1) axes x1y1 ls 1 title "MobiFS状态机模型"
