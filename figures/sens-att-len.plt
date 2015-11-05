set terminal pdfcairo enhanced mono font "Times New Roman,16" size 5,3.5

set output "sens-att-len.pdf"
set style fill pattern 5
set boxwidth 0.5 relative
set ylabel '事务吞吐率（KTPS）'
set yrange [210:270]
set ytics nomirror
set y2label '写流量（GB）'
set y2range [1:1.5]
set y2tics
set xrange [129:16224]
set xtics nomirror
set logscale x 2
set xlabel "BTT长度（表项数）"
set key right spacing 1.25
plot 'sens-att-len.data' using 1:3 axes x1y2 with boxes ls 0 title "写流量", \
    '' using 1:2 axes x1y1 with linespoints ls 5 title "事务吞吐率"

