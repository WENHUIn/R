############################################
# Exercise 1

mtcars
nrow(mtcars)

a <- which(rownames(mtcars)=="Cadillac Fleetwood")
mtcars1 <- mtcars[1:a-1,]
mtcars2 <- mtcars[-(1:a-1),]

mtcars2[,c("vs","am")] <- NULL
mtcars2$vs <- NA
mtcars2$am <- NA
rbind(mtcars1,mtcars2)

############################################
# Exercise 2

b <- which(colnames(mtcars)=="wt")
mtcars3 <- mtcars[,1:b-1]
mtcars4 <- mtcars[,-(1:b-1)]

mtcars4 <- mtcars4[!(substr(rownames(mtcars),1,4)=="Merc"),]
mtcars4

mtcars3$name <- row.names(mtcars3)
mtcars4$name <- row.names(mtcars4)
row.names(mtcars3) <- NULL
row.names(mtcars4) <- NULL

mtcars_all <- merge(mtcars3,mtcars4,by="name",all=TRUE)
mtcars_all

############################################
# Exercise 3
mov <- "The Shining"
act <- c("Jack Nicholson", "Shelley Duvall", "Danny Lloyd", "Scatman Crothers", "Barry Nelso")
scores <- c(4.5, 4.0, 5.0)
sources <- c("IMDb1", "IMDb2", "IMDb3")
comments <- c("Best Horror Film I have ever seen", "A truly brilliant and scary ESAim from Stanley Kubrick","A masterpiece of psychological horror")
rev <- data.frame(scores, sources, comments)

shine_list <- list(mov, act, rev)
rm(mov, act, scores, comments, rev)
names(shine_list) <- c("moviename", "actors","reviews")
shine_list

firsts <- shine_list[[2]][c(2,4)]
firsts

actors <- shine_list[[2]][2]
actors

comment <- shine_list[[3]]
comment

s5 <- shine_list[[3]][3,]
s5

release <- c("1980")
shine_list$release <- release
shining_list_new <- shine_list
shining_list_new




















