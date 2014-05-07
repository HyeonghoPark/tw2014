set terminal postscript eps enhanced "Helvetica" 25
set term postscript eps
set output "voltage-plot.eps"
set xlabel "Relative Potential Difference"
set ylabel "Intensity of Current" rotate by 90
set autoscale
set xrange [0:12]
set key at 6,18 box font ",20" height 1 width -5
f(x) = 1.3677 * x + 0.3404
plot "result.csv" using 4:5 title "Observed" with points pointtype 7 pointsize 1.5, \
       f(x) title "Linear Fit Curve" with lines linetype 1
