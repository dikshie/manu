#set terminal png large
set terminal postscript eps enhanced color
set output "hit-model-original-1000MB-replica-minggu6-cdf.eps"

set grid
set ylabel "cdf"
set xlabel "#num of replica"
plot "../../YouTube6Model/1000MB-10G/scripts/replica-minggu6-model-cdf.dat" u 2:1 w lines t 'model' lt 2 , "../../YouTubeVoD6Original/1000MB-10G/scripts/replica-minggu6-original-cdf.dat" u 2:1 w lines t 'original' lt 3 

