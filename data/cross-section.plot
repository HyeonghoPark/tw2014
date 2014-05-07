set terminal postscript eps enhanced "Helvetica" 25
set term postscript eps
set output "cross-section-plot.eps"
set xlabel "Cross-sectional Area (mm^2)"
set ylabel "Intensity of Current" rotate by 90
set autoscale
set xrange [0:3]
set key at 1.4,15 box font ",18" width -6 height 1
f(x) = 3.5415 * x + 3.3932
plot "result.csv" using 6:7 title "Observed" with points pointtype 7 pointsize 1.5, \
       f(x) title "Linear Fit Curve" with lines linetype 1

