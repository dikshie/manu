#set terminal png large
set terminal postscript eps enhanced color
set output "replica-500MB-minggu10.eps"

set grid
set ylabel "#replicas"
set xlabel "video rank"
plot "../../YouTube6Model/500MB-10G/scripts-toreplica/replica-minggu10-model-rank.dat" u 1:2 w points t 'model' lt 1 , "../../YouTubeVoD6Original/500MB-10G/scripts-toreplica/replica-minggu10-original-rank.dat" u 1:3 w points t 'original' lt 2 

