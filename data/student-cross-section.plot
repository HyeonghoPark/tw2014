set terminal latex
set output "student-cross-section-plot.tex"
set xlabel "Cross-sectional Area"
set ylabel "\\rotatebox{90}{Residuals}"
set autoscale
set xrange [0:3]
set yrange [-2.5:3]
set key at 1.5,2.75 box height 1 width 2
set xzeroaxis
plot "student_result.csv" using 14:19 title "Studentized Residuals" with points pointtype 7 pointsize 1
