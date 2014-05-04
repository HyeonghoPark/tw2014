set terminal latex
set output "length-plot.tex"
set xlabel "Length (m)"
set ylabel "\\rotatebox{90}{Galvanometer Reading}"
set autoscale
set xrange [-1:11]
set key at 10,70 height 1.5 width 2 box
plot "result.csv" using 1:2 title "Observed" with points pointtype 7 pointsize 1
