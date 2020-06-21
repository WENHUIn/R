## HW19
## Wenhui Yang
## 4/30/2019

## 1
setwd("/Users/ninenins/Desktop/R/数据集")
college <- read.csv("college(1).csv")

college$Private <- factor(college$Private,levels=c("Yes","No"))
boxplot(college$Personal~college$Private)
t.test(college$Personal[college$Private=="Yes"],
       college$Personal[college$Private=="No"], var.equal=FALSE)

## 2 
a <- quantile(college$Top10perc)
first <- college[college$Top10perc <= a[2],]
second <- college[college$Top10per >a[2] & college$Top10perc <= a[3],]
third <- college[college$Top10per >a[3] & college$Top10perc <= a[4],]
fourth <- college[college$Top10perc >a[4],]
newcollege <- rbind(first,second,third,fourth)
Q <- nrow(first)
W <- nrow(second)
E <- nrow(third)
R <- nrow(fourth)


## 3
newcollege$group <- NA
newcollege$group[1:201] <- rep("first")
newcollege$group[202 : 392] <- rep("second")
newcollege$group[393 : 584] <- rep("third")
newcollege$group[585 : 777] <- rep("fourth")
newcollege$group <- factor(newcollege$group, levels=c("first","second","third","fourth")
boxplot(newcollege$Grad.Rate~newcollege$group)
anova(lm(newcollege$Grad.Rate~newcollege$group))                              