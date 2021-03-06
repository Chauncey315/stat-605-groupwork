## group project
movie=read.table("Year/movieYear.txt",sep=" ",header=F)
short=read.table("Year/shortYear.txt",sep=" ",header=F)
video=read.table("Year/videoYear.txt",sep=" ",header=F)
videoGame=read.table("Year/videoGameYear.txt",sep=" ", header=F)
tvMovie=read.table("Year/tvMovieYear.txt",sep=" ", header=F)
tvEpisode=read.table("Year/tvEpisodeYear.txt",sep=" ", header=F)
tvSeries=read.table("Year/tvSeriesYear.txt",sep=" ", header=F)
tvMiniSeries=read.table("Year/tvMiniSeriesYear.txt",sep=" ", header=F)
tvShort=read.table("Year/tvShortYear.txt",sep=" ", header=F)
tvSpecial=read.table("Year/tvSpecialYear.txt",sep=" ", header=F)

plot(movie[,1],movie[,2],type="l",ylim=c(2,10),xlab="Year", ylab="Average Rating",main="Average Rating of Productions VS Year")
lines(short[,1],short[,2],co="red")
lines(video[,1],video[,2],col="blue")
lines(videoGame[,1],videoGame[,2],col="green")
legend("topleft",c("Movie","Short","Video","Video Game"),lty=c(1,1,1,1),col=c("black","red","blue","green"))

plot(tvMovie[,1],tvMovie[,2],type="l",ylim=c(0,10),xlab="Year", ylab="Average Rating",main="Average Rating of Productions VS Year")
lines(tvEpisode[,1],tvEpisode[,2],co="red")
lines(tvSeries[,1],tvSeries[,2],col="blue")
lines(tvMiniSeries[,1],tvMiniSeries[,2],col="green")
lines(tvShort[,1],tvShort[,2],col="grey")
lines(tvSpecial[,1],tvSpecial[,2],col="orange")
legend("bottomright",c("TV Movie","TV Episode","TV Series","TV Mini Series","TV Short","TV Special"),lty=c(1,1,1,1,1,1),col=c("black","red","blue","green","grey","blue"))

plot(movie[,1],movie[,3],type="l",xlab="Year", ylab="Average Number of votes",main="Average Number of Voting of Productions VS Year")
lines(short[,1],short[,3],co="red")
lines(video[,1],video[,3],col="blue")
lines(videoGame[,1],videoGame[,3],col="green")
legend("topleft",c("Movie","Short","Video","Video Game"),lty=c(1,1,1,1),col=c("black","red","blue","green"))

plot(tvMovie[,1],tvMovie[,3],type="l",xlab="Year", ylim=c(0,2500),ylab="Average Rating",main="Average Number of Voting of Productions VS Year")
lines(tvEpisode[,1],tvEpisode[,3],co="red")
lines(tvSeries[,1],tvSeries[,3],col="blue")
lines(tvMiniSeries[,1],tvMiniSeries[,3],col="green")
lines(tvShort[,1],tvShort[,3],col="grey")
lines(tvSpecial[,1],tvSpecial[,3],col="orange")
legend("topleft",c("TV Movie","TV Episode","TV Series","TV Mini Series","TV Short","TV Special"),lty=c(1,1,1,1,1,1),col=c("black","red","blue","green","grey","blue"))

