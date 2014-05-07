set terminal postscript eps enhanced "Helvetica" 25
set term postscript eps
set output "student-voltage-plot.eps"
set xlabel "Relative Potential Difference"
set ylabel "Residuals" rotate by 90
set autoscale
set xrange [0:11]
set key at 7,-2.5 font ",20" height 1 width -5
set xzeroaxis
plot "student_result.csv" using 8:13 title "Studentized Residuals" with points pointtype 7 pointsize 1.5
