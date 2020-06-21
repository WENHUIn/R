## HW15
## Wenhui Yang
## 4/14/2019

#1
m1 <- c(0,1/3,1/3,1/3)
m2 <- c(0,0,1/2,1/2)
m3 <- c(1,0,0,0)
m4 <- c(1/2,0,1/2,0)
P0 <- c(1,0,0,0)
M <- cbind(m1,m2,m3,m4)

while (abs(PT - Pnew)>0.0001) {
  T <- 1
  PT <- M^T %*% P0
  Pnew <- PT %*% M
  T <- T + 1
}


#2
ind <- 1:1000
M <- matrix(rep(0,1000^2), nrow=1000,ncol=1000)
for (i in 1:1000) {
  a <- sample(x=1:10, size=1)
  b <- sample(x=1:1000, size=a)
  M[b,i] = 1/a
} 
B <- t(M)%*%M
eigen.B <- eigen(B)


