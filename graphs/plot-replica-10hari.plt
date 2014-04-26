#set terminal png large
set terminal postscript eps enhanced color
set output "replica-1000MB-10hari.eps"

set grid
set ylabel "#replicas"
set xlabel "video rank"
plot "../../YouTube6Model/1000MB-10G/scripts-toreplica/replica-10hari-model-rank.dat" u 1:2 w points t 'model' lt 1 , "../../YouTubeVoD6Original/1000MB-10G/scripts-toreplica/replica-10hari-original-rank.dat" u 1:3 w points t 'original' lt 2 

