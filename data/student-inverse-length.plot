set terminal latex
set output "student-inverse-length-plot.tex"
set xlabel "Length (m)"
set ylabel "\\rotatebox{90}{Residuals}"
set autoscale
set xrange[-1:11]
set key at 5,5 width 2 height 1
set xzeroaxis
plot "student_result.csv" using 1:7 title "Studentized Residuals" with points pointtype 7 pointsize 1
