## original post:
## https://dreamtolearn.com/ryan/data_analytics_viz/72

# SELF- AND SUPER-ORGANIZING MAPS IN R: THE KOHONEN PACKAGE (PART 2) - NHL STATS
## R Source Code - Ryan Anderson - Dream to Learn - May 1st 2014
## Playing around with supervised pattern recognition, and self organizing maps 
## Figured NHL player stats could be interesting (and can check if the viz is 'meaningful')

#install.packages("kohonen")

# Load the kohonen package 
library("kohonen")
setwd("C:/Users/Home/Documents/DTL Data Viz Community/Canada")
players <- read.csv("HockeyStats2014CSV.csv")

## data source: http://sports.yahoo.com/nhl/stats/byposition?pos=C,RW,LW,D&conference=NHL&year=season_2013&qualified=1
## or here https://drive.google.com/file/d/0BwjxYjWyopXhWVM0N19zSExINzA/edit?usp=sharing (CSV)
## and with player names and teams https://drive.google.com/file/d/0BwjxYjWyopXhUWlHcGJzdS1ZVEk/edit?usp=sharing

head(players)
players.sc <- scale(players)
set.seed(7)
players.som <- som(players.sc, grid = somgrid(10, 6, "hexagonal"))
plot(players.som, main = "NHL Player Stats - 2013/2014 - Regular Season")

#-- end of code

## FROM KOHONEN LIBRARY PDF ABSTRACT... 
#  "In this age of ever-increasing data set sizes, especially in the natural sciences, visualisation
#  becomes more and more important. Self-organizing maps have many features
#  that make them attractive in this respect: they do not rely on distributional assumptions,
#  can handle huge data sets with ease, and have shown their worth in a large number of
#  applications. We highlight the kohonen package for R, which implements 
#  self-organizing maps and extensions for supervised pattern recognition and data fusion.
