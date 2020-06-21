a <- runif(100)
a <- round(a)
b <- runif(100,min = -1.5,max = 1.5)
b <- round(b)

same <- which(a==b)
b[same]