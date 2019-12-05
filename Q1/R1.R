
rm(list = ls())
args = (commandArgs(trailingOnly=TRUE))

basics = read.csv("b.csv",  header = F, sep = ";" , col.names = c('tconst','a','b','c','d','year','f','g','h') )
ratings = read.csv("r.csv" , sep = ";" )

ff= merge(basics , ratings , by = 'tconst')
tt = with (ff , aggregate(averageRating ~ year , FUN = function(x) c(count =length(x),sum = sum(x))))

write.table( tt , file = paste("part",args[1],".csv",sep="") , sep = ",")

