set terminal latex
set output "student-voltage-plot.tex"
set xlabel "Relative Potential Difference"
set ylabel "\\rotatebox{90}{Residuals}"
set autoscale
set xrange [-1:11]
set key at 5,-2.5 height 1 width 2
set xzeroaxis
plot "student_result.csv" using 8:13 title "Studentized Residuals" with points pointtype 7 pointsize 1
