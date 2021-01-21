library(ggplot2)
library(stringr)

spotify = read.csv('C:/Users/clintonngan/Documents/spotify.csv',header = TRUE)
spotify <- data.frame(spotify)
spotify$release_year = str_sub(spotify$release_date,-4)
spotify_small <- subset(spotify, release_year == 2020 | 
                          release_year == 2010 | 
                          release_year == 2000 | 
                          release_year == 1990 | 
                          release_year == 1980 | 
                          release_year == 1970 | 
                          release_year == 1960)

qplot(release_year, tempo, data = spotify_small, geom = "boxplot")
boxplot(tempo ~ release_year,data = spotify_small, main="Tempo over Time", ylab="Tempo", xlab="Release Year",horizontal=FALSE, col = "skyblue")
