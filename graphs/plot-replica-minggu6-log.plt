#set terminal png large
set terminal postscript eps enhanced color
set output "replica-minggu6-log.eps"

set grid
set ylabel "#replicas"
set xlabel "video rank"
set logscale x
plot "../../YouTube6Model/500MB-10G/scripts-toreplica/replica-minggu6-model-rank.dat" u 1:2 w points t 'model' lt 2 , "../../YouTubeVoD6Original/500MB-10G/scripts-toreplica/replica-minggu6-original-rank.dat" u 1:3 w points t 'original' lt 3 

