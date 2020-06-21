### HW6 ###
### Wenhui Yang ###
### 2/12/2019 ###

# Exerciese 1
a <- 1:9
A <- matrix(a^2,3,3,byrow=TRUE)
B <- matrix(a^2,3,3,byrow=FALSE)
C <- col(A) >= row(A)
A*C

# Exerciese 2
Storrs <- c(365, 489)
Hartford <- c(426, 387)
Stamford <- c(571, 486)

HP_vector <- c(Storrs,Hartford,Stamford)
HP_matrix <- matrix(HP_vector,ncol = 2,nrow = 3, byrow = TRUE)
Area <- c("Storrs","Hartford","Stamford")
Type <-c("House","Condo")
rownames(HP_matrix) <- Area
colnames(HP_matrix) <- Type

CT_average_type <- colMeans(HP_matrix)
HP_matrix.2 <- rbind(HP_matrix,CT_average_type)

CT_average_area <- rowMeans(HP_matrix.2)
HP_matrix.f <- cbind(HP_matrix.2,CT_average_area)


# Exercise 3
income <- rchisq(100,5)
yrsofedu <- sample(7:16,100,replace = T)
CT <- cbind(income,yrsofedu)
gender <- sample(c("Male","Female"),100,replace = T)
cbind(CT,gender)
CT1 <- CT[gender == "Female",]
CT2 <- CT[CT[,2]>12,]
colMeans(CT)
colMeans(CT1)

# Exercise 4
x1 <- rnorm(100,2,4)
x2 <- rchisq(length(x1),3)
e <- rnorm(length(x1),0,4)
Y <- 4 + 3*x1 + 2*x2 + e
X <- cbind(rep(1,100),x1,x2)
X <- cbind(1,x1,x2)
b_hat <- solve(t(X)%*%X)%*%t(X)%*%Y
b_hat
lm(Y~x1+x2)



