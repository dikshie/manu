#set terminal png large
set terminal postscript eps enhanced color
set output "hit-model-original-1000MB-cdf-log.eps"


set ytics font ", 20"            
set xtics font ", 20"            
set ylabel font ",20"
set xlabel font ",20"
set key font ",20"
set grid
set ylabel "CDF"
set xlabel "percentage contribution by peer"
set logscale x
set logscale y
plot "../../YouTube6Model/1000MB-10G/scripts/hit-peer-model-cdf.dat" u 2:1 w points t 'model' lt 2 , "../../YouTubeVoD6Original/1000MB-10G/scripts/hit-peer-original-cdf.dat" u 2:1 w points t 'original' lt 3 

