set terminal pdfcairo enhanced mono font "Times New Roman,16" size 5,3.5
set output "bench-app.pdf"
set style data histograms
set style histogram errorbars 
set ylabel '时间（s）'
set ytics nomirror
set yrange [0:50]
set y2label '能耗（J）'
set y2tics
set y2range [0:105]
set key below box
plot 'bench-app.data' using 2:3:xtic(1) axes x1y1 fs pattern 4 ls 1 title "Ext4-时间", \
    '' using 6:7:xtic(1) axes x1y1 fs solid 1 ls 1 title "MobiFS-时间", \
    '' using 4:5:xtic(1) axes x1y2 fs pattern 5 ls 1 title "Ext4-能耗", \
    '' using 8:9:xtic(1) axes x1y2 fs pattern 2 ls 1 title "MobiFS-能耗"
