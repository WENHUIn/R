# Exercise 1
mtcars
head(mtcars)
tail(mtcars)
str(mtcars)
lm(mtcars$mpg~mtcars$cyl+mtcars$hp)
mtcars[grep("Merc",rownames(mtcars)),]

# Exercise 2
name <- c("Apple", "MS", "Google", "Honda", "GM", "Volks", "Hyundai", "Amazon")
type <- c("IT", "IT", "IT", "Auto", "Auto", "Auto", "Auto", "IT")
stock <- c(165.5, 55.48, 1119.20, 36.16, 41, 172.06, 162.5, 1429.95)
US <- c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE)
#
portfolio <- data.frame(name,type,stock,US)
rm(name,type,stock,US)
#
str(portfolio)
portfolio$name <- as.character(portfolio$name)
#
spg <- portfolio[portfolio$name=="Google",3]
google <- portfolio[portfolio$name=="Google",]
ffc <- portfolio$stock[1:5,]
IT <- subset(portfolio, subset = type =="IT")
sla <- subset(portfolio, subset = stock < portfolio[portfolio$name=="Apple",3])
rank <- order(portfolio$stock,decreasing = TRUE)
portfolio[rank,]
portfolio[1:5,]
