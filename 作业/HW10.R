#1
day <- c("1903/1/13","2019/2/27")
as.Date(day)
difftime(day[2],day[1])
seq(as.Date("2019/1/1"), as.Date("2019/2/27"), by = "month")

#2
sc.game <- read.csv(file.choose(),stringsAsFactors = FALSE,na.strings = "")
head(sc.game)
str(sc.game)

sc.game$year <- format(sc.game$date,format="%Y")
sc.game$score <- sc.game$home_score + sc.game$away_score
ave.score.1 <- colMeans(sc.game[sc.game$year >="1930" & sc.game$year <="1939",c("home_score","away_score","score")])
ave.score.2 <- colMeans(sc.game[sc.game$year >="2005" & sc.game$year <="2014",c("home_score","away_score","score")])
ave.score.1
ave.score.2

game.1950s <- sc.game[sc.game$date >="1950-01-01" & sc.game$date <= "1959-12-31",]
home_win <- game.1950s$home_score > game.1950s$away_score
sum(home_win) / nrow(game.1950s)

sc.game$date <- as.Date(sc.game$date)
sc.game$year <- format(sc.game$date,format = "%Y")
games <- summary(factor(sc.game$year[sc.game$year>"1900" & sc.game$year<"1960"]))
plot(games, type="s")
plot(1900:1960,games,type = "s")