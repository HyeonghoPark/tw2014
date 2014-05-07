set terminal postscript eps enhanced "Helvetica" 25
set term postscript eps
set output "inverse-length-plot.eps"
set xlabel "Length (m)"
set ylabel "Inverse of Current Intensity" rotate by 90
set autoscale
set xrange[0:12]
set key at 6.5,0.375 box font ",17" height 1 width -7
f(x) = 0.0203 * x + 0.0416
plot "result.csv" using 1:3 title "Inverse of Observed" with points pointtype 7 pointsize 1.5, \
       f(x) title "Linear Fit Curve" with lines linetype 1
