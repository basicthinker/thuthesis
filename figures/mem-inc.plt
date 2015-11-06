set terminal pdfcairo enhanced mono font "Times New Roman,16" size 5,3.5

set output "mem-inc.pdf"
set style data linespoints
set xlabel '年份'
set xrange [2002.5:2015]
set ylabel 'DRAM容量（MB）'
set yrange [16:8192]
set logscale y 2
plot 'mem-inc.data' using 2:3 with points pt 7 ps 1.5 notitle, \
  '' using ( $0==1 ? $2 : 1/0 ):3:1 with labels offset -6 notitle, \
  '' using ( $0<=2 && $0!=1 ? $2 : 1/0 ):3:1 with labels offset 8 notitle, \
  '' using ( $0==4 || $0==7 || $0==8 ? $2 : 1/0 ):3:1 with labels offset 6 notitle, \
  '' using ( $0==14 ? $2 : 1/0 ):3:1 with labels offset -10 notitle, \
  '' using ( $0>2 && $0!=4 && $0!=7 && $0!=8 && $0!=14? $2 : 1/0 ):3:1 with labels offset -8 notitle

