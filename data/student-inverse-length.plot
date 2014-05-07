set terminal postscript eps enhanced "Helvetica" 25
set term postscript eps
set output "student-inverse-length-plot.eps"
set xlabel "Length (m)"
set ylabel "Residuals"
set autoscale
set xrange[-1:11]
set key at 6,5 box font ",20" width -6 height 1
set xzeroaxis
plot "student_result.csv" using 1:7 title "Studentized Residuals" with points pointtype 7 pointsize 1.5
