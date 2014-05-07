set terminal postscript eps enhanced "Helvetica" 25
set term postscript eps
set output "length-plot.eps"
set xlabel "Length (m)"
set ylabel "Intensity of Current" rotate by 90
set autoscale
set xrange [0:11]
set key at 10,70 font ",20" height 1.5 width 2 box
plot "result.csv" using 1:2 title "Observed" with points pointtype 7 pointsize 1.5
