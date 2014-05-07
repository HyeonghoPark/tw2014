set terminal postscript eps enhanced "Helvetica" 25
set term postscript eps
set output "student-cross-section-plot.eps"
set xlabel "Cross-sectional Area (mm^2)"
set ylabel "Residuals"
set autoscale
set xrange [0:3]
set yrange [-2.5:3]
set key at 1.5,2.75 box height 1 width 2
set xzeroaxis
plot "student_result.csv" using 14:19 title "Studentized Residuals" with points pointtype 7 pointsize 1
