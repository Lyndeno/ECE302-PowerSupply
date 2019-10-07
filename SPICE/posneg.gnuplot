set term png

set xlabel "Time (s)"
set ylabel "Voltage (V)"

set output "rectifier_unfiltered.png"
plot "rectifier_unfiltered.txt" using 1:2 title "Positive" with lines lc 7, \
     "rectifier_unfiltered.txt" using 1:3 title "Negative" with lines lc 3

set output "filtered.png"
plot "filtered.txt" using 1:2 title "Positive" with lines lc 7, \
     "filtered.txt" using 1:3 title "Negative" with lines lc 3

set output "neg_regulated_load.png"
plot "neg_regulated_load.txt" using 1:2 title "Zener Regulated" with lines lc 7

set output "neg_regulated_load_ripple.png"
plot "neg_regulated_load_ripple.txt" every ::100::400 using 1:2 title "Zener Ripple" with lines lc 7

set output "neg_regulated_noload.png"
plot "neg_regulated_noload.txt" using 1:2 title "Zener Regulated" with lines lc 7

set output "neg_regulated_noload_ripple.png"
plot "neg_regulated_noload.txt" every ::100::400 using 1:2 title "Zener Regulated" with lines lc 7
