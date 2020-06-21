sc <- read.csv(file.choose())

#1
mean(sc$eur_wage)
group1 <- aggregate(sc[,c("eur_wage","overall")], list(league=sc$league), mean)
group1[which.max(group1$eur_wage),]
group1[which.max(group1$overall),]

#2
group2 <- aggregate(sc[,"eur_value"],by=list(club=sc$club),FUN=sum)
rank <- order(group2$x,decreasing = TRUE)
order <- group2[rank,]
order[1,]

#3
group3 <- aggregate(sc[,c("eur_wage","age"],list(age=sc$age),mean)
plot(group3)

#4
sc$club <- as.factor(sc$club)
sc23 <- sc[(sc$age < 23),]
rank2 <- summary(sc23$club)
rank2[2]
