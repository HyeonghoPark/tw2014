set terminal latex
set output "inverse-length-plot.tex"
set xlabel "Length (m)"
set ylabel "\\rotatebox{90}{Inverse of Galvanometer Reading}"
set autoscale
set xrange[-2:12]
set key at 5,0.35 height 1 width 2
f(x) = 0.0203 * x + 0.0416
plot "result.csv" using 1:3 title "Inverse of Observed" with points pointtype 7 pointsize 1, \
       f(x) title "Linear Fit Curve" with lines linetype 1
