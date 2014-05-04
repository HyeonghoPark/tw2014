set terminal latex
set output "voltage-plot.tex"
set xlabel "Relative Potential Difference"
set ylabel "\\rotatebox{90}{Galvanometer Reading}"
set autoscale
set xrange [-2:12]
set key at 5,17.5 box font ",8" width 4.5 height 1.5
f(x) = 1.3677 * x + 0.3404
plot "result.csv" using 4:5 title "Observed" with points pointtype 7 pointsize 0.5, \
       f(x) title "Linear Fit Curve" with lines linetype 1
