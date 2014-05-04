set terminal latex
set output "cross-section-plot.tex"
set xlabel "Cross-sectional Area"
set ylabel "\\rotatebox{90}{Galvanometer Reading}"
set autoscale
set xrange [0:3]
set key at 1.3,15 width 2 height 1
f(x) = 3.5415 * x + 3.3932
plot "result.csv" using 6:7 title "Observed" with points pointtype 7 pointsize 1, \
       f(x) title "Linear Fit Curve" with lines linetype 1

