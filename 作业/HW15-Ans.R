#1
m1 <- c(0,1/3,1/3,1/3)
m2 <- c(0,0,1/2,1/2)
m3 <- c(1,0,0,0)
m4 <- c(1/2,0,1/2,0)
M <- cbind(m1,m2,m3,m4)

pr1 <- function(M){
  p_1 <- c(0,0,0,0)
  p <- cbind(p_1,c(0,0,1,0)) # it doesn't matter which page you start
  T <- 2
  while (sum(abs(p[,T]-p[,T-1])>0.001)){
    p <- cbind(p,c(0,0,0,0))
    p[,T+1] <- M %*%p[,T]
    T <- T + 1
  }
  return(p[,T])
}


pr1 <- function(M){
  p_1 <-rep(0,nrow(M))
}
## 2nd Method
pr2 <- function(M){
  eigen.M <- eigen(M)
  vec.temp <- eigen.M$vectors[,1]
  vec.temp <- Re(vec.temp)
  eig.vec <- vec.temp/sum(vec.temp)
  return(eig.vec)
}

## which is better?
ind <- 1:1000
M1 <- matrix(rep(0,1000^2), nrow=1000,ncol=1000)
for (i in 1:1000) {
  a <- sample(x=1:10, size=1)
  b <- sample(x=1:1000, size=a)
  M[b,i] = 1/a
} 

pr1(M1)
pr2(M1)











