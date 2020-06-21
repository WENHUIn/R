n = 50 
set.seed(0)
x = sort(runif(n,min=-2,max=2))
y = x^3 + rnorm(n)
plot(x,y,type = "p") #default
plot(x,y,type = "b")
plot(x,y,main="A noisy cubic",xlab = "My x variable",ylab = "My y variable") #title
?pch
plot(x,y,pch="a")
plot(x,y,type="l",lty=1,lwd=1)
plot(x,y,type="l",lty=1,lwd=3,col="tomato")
?par
colors()
plot(x,y,pch=19,col=2:4)
par(mfrow=c(2,2))
plot(x,y,main="red cubic",pch=20,col="red")
plot(x,y,main="blue cubic",pch=20,col="blue")
plot(rev(x),y,main="flipped green",pch=20,col="green")
plot(rev(x),y,main="flipped purple",pch=20,col="purple")


getwd()
pdf(file="noisy_cubics.pdf",height = 7,width = 7)
par(mfrow=c(2,2),mar=c(4,4,2,0.5))
plot(x,y,main="red cubic",pch=20,col="red")
plot(x,y,main="blue cubic",pch=20,col="blue")
plot(rev(x),y,main="flipped green",pch=20,col="green")
plot(rev(x),y,main="flipped purple",pch=20,col="purple")
graphics.off()
plot(x,y,cex=0.5,main = "shrunken")
plot(x,y,cex=2,main = "expanded")

plot(x,y,xlim=c(-1,1),ylim = c(-5,5),xlab="timmed x",ylab="trimmed y")
x.trimmed <- x[x>-1 & x<1]
y.trimmed <- y[x>-1 & x<1]
plot(x.trimmed,y.trimmed)

x2 = sort(runif(n,min=-2,max=2))
y2 = x^2 + rnorm(n)
points(x2,y2,pch=20,col="blue")
lines(x2,y2,col="red",lwd=3)

legend("bottomright",legend=c("cubic","quadratic"),col=c("black","blue"),pch=c(1,20),cex=1)


x <- 1:10
y1 = x^2
y2 = 2*y1
plot(x,y1,type = "b")


county <- read.csv(file.choose(),stringsAsFactors = FALSE)
head(county)
data.1 <- county[1:111,]
tail(data.1)
data.state <- factor(data.1$State,levels=c("Alabama","Alaska","Arizona"))
summary(data.state) # or table(data.state)
plot(data.state,main = "Number of conties")
plot(data.state,data.1$IncomePerCap,range=1,las=1)
boxplot(data.1$IncomePerCap~data.state,range=1,las=2)

big <-NA
big[data.1$TotalPop > 70000] <- "big"
big[data.1$TotalPop <= 70000] <- "small"

par(mar=c(6,4,2,1))
boxplot(data.1$IncomePerCap~big*data.state,range=1,las=2,col=c("blue","red"),main="income per capital",
        rang=1,las=2)
plot(data.1[,3:ncol(data.1)])
pairs(data.1[,3:7])

#highlight outliers
data.2 <- county[county$State=="California",]
plot(data.2$TotalPop)
abline(h=10000000,lty=2)
abline(h=2000000,lty=2)
index.1 <- which(data.2$TotalPop >10000000)
points(index.1,data.2$TotalPop[index.1],pch=16,col="red")
index.2 <- which(data.2$TotalPop > 2000000 & data.2$TotalPop < 10000000)
points()

proportion <- data.1$Women/data.1$TotalPop
plot(proportion, data.1$Unemployment, pch=20, xlab="Women/Total Population",
     ylab="Unemployment rate")
linear.fit <- lm(data.1$Unemployment~proportion)
abline(linear.fit, lwd=3, col="red")

ave.income <- county$IncomePerCap
hist(ave.income)
hist(ave.income, col="pink", freq=TRUE)

hist(ave.income, col="pink", freq=FALSE,
     breaks=seq(0,70000,by=2000), xlab="Imcome per capita", main="County Level Average
     Income per capital")
density.est = density(ave.income, adjust=0.1) 
lines(density.est,lwd=3)

#### Exercise ####
data.set <- read.csv("/Users/ninenins/Desktop/R/数据集/histogram(1).csv", stringsAsFactors = FALSE )
data.set <- data.set[data.set$YRDATA==2013,]

data1 <- data.set[data.set$STATE == "Connecticut",]
data1 <- data1[data1$ENROLL != 0,]
exp_per_stu <- data1$TOTALEXP/data1$ENROLL
plot(exp_per_stu)

index1 <- which(exp_per_stu > 30)
points(index1,exp_per_stu[index1], pch=16, col="red")
text(index1,exp_per_stu[index1]-1, labels = data1[index1, 3], cex=0.8)

head(data.set)
data.set <- data.set[data.set$ENROLL != 0,]
data.hist = data.set$TOTALEXP/data.set$ENROLL
data.hist <- as.numeric(exp_per_stu)
hist(data.hist[data.set$STATE == "Connecticut"], col="pink", freq=FALSE,
     breaks=seq(0,40,by=2), xlab="Total Expenditure",ylim = c(0,0.35),main="Education expenditure in CT
     and MI")
hist(data.hist[data.set$STATE == "Alabama"], col=rgb(0.3,0.5,0.5,0.5), 
     freq=FALSE, breaks=seq(0,40,by=2), add=TRUE)



