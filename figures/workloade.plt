set terminal pdfcairo enhanced color dashed font "Times New Roman,16" size 5,2.5

set output "workloade.pdf"
set style data lines
set ylabel '事务吞吐率（KTPS）'
set yrange [1:16]
set logscale y 2
set xrange [0.67:10.67]
set logscale x 2
set xlabel '线程数'
set key left top
plot 'workloade.result' using 1:2 with linespoints ls 1 lw 2  title "Lock-STL", \
    '' using 1:3 with linespoints ls 4 lw 2  title "Excite", \
    '' using 1:4 with linespoints ls 2 lw 2  title "TBB-unordered", \
    '' using 1:5 with linespoints ls 7 lw 2  title "TBB-hash"
