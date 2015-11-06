set terminal pdfcairo enhanced mono font "Times New Roman,16" size 5,3.5
set output "baseline.pdf"
set style data histograms
set style fill pattern 3
set style histogram cluster gap 1
set ylabel '写吞吐率（MB/s）'
set yrange [1:800]
set y2label '能耗（mJ）'
set y2range [0:8000]
set ytics nomirror
set y2tics
set logscale y 2
set key below box
set xtic rotate by -15
plot 'baseline.data' using 2:xtic(1) axes x1y1 title "写吞吐率", \
    '' using 3:xtic(1) axes x1y2 title "能耗"
