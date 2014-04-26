#set terminal png large
set terminal postscript eps enhanced color
set output "hit-model-original-500MB-replica-minggu6-cdf-log.eps"

set grid
set ylabel "CDF"
set xlabel "#num of replica"
set logscale x
plot "../../YouTube6Model/500MB-10G/scripts/replica-minggu6-model-cdf.dat" u 2:1 w points t 'model' lt 2 , "../../YouTubeVoD6Original/500MB-10G/scripts/replica-minggu6-original-cdf.dat" u 2:1 w points t 'original' lt 3 

