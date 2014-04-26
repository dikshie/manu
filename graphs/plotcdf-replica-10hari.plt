#set terminal png large
set terminal postscript eps enhanced color
set output "hit-model-original-1000MB-replica-10hari-cdf.eps"

set grid
set ylabel "cdf"
set xlabel "#num of replica"
plot "../../YouTube6Model/1000MB-10G/scripts/replica-10hari-model-cdf.dat" u 2:1 w points t 'model' lt 2 , "../../YouTubeVoD6Original/1000MB-10G/scripts/replica-10hari-original-cdf.dat" u 2:1 w points t 'original' lt 3 

