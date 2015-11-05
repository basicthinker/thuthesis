set terminal pdfcairo enhanced mono font "Times New Roman,16" size 5,3.5

set output "cpu-ipc.pdf"
set style data histograms
set style fill pattern 1
set style histogram cluster gap 1
set ylabel "IPC相对值"
set yrange [0:1.2]
set key below box spacing 1.25
set xtic rotate by -15
plot 'cpu-ipc.data' using 3:xtic(1) axes x1y1 ls 1 title "理想DRAM", \
    '' using 5:xtic(1) axes x1y1 ls 1 title "理想NVM", \
    '' using 7:xtic(1) axes x1y1 ls 1 title "ThyNVM", \
    1 axes x1y1 ls 1 title "" with lines
