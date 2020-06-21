mat = 1:5 %*% t(6:10)
image(mat)
a <- seq(0,1, length=5) 
a_mat <- matrix(rep(a,length(a)),length(a),length(a))
text(a_mat,t(a_mat), mat) # location of x,y, and value

phi = dnorm(seq(-2,6,length=50)) + dnorm(seq(-2,6,length=50), mean=4, sd=1)
plot(phi, type="l")
normal.mat = phi %*% t(phi)
image(normal.mat)
image(normal.mat, col=terrain.colors(12)) 
image(normal.mat, col=topo.colors(12))
image(normal.mat, col=heat.colors(3))
?heat.colors

contour(normal.mat, col = 1:3) # color repeats
image(normal.mat, col=terrain.colors(20))
contour(normal.mat, add=TRUE)

curve(x^3) # Default is to plot between 0 and 1.
curve(3*sin(x)^3, from=-3, to=3, lwd=3, col="red") # More plotting options

n = 100
set.seed(0)
x = sort(runif(n, min=-pi, max=pi))
y = 3*sin(x)^3 + rnorm(n)

plot(x,y)
curve(3*sin(x)^3,lwd=3,lty=2,col="red",add = TRUE)
# kernal regression <---> local polynomial
z <- loess(y~x,span=0.4) 
lines(x,fitted(z),lwd=3,lty=2,col="blue")
legend("bottomright", c("true", "local"), horiz=TRUE, col=c("red", "blue"), lwd=3,
       lty=c(1,2))

x <- matrix(rep(seq(-10, 10, length= 30),30),30,30)
y <- t(x)
f <- function(x,y) {r <- sqrt(x^2+y^2); return(10 * sin(r)/r)}
z <- f(x,y)
persp(x[,1], y[1,], z, theta = 0, phi = 50, expand = 1, 
      col = "lightblue", xlim=c(-10,10), ylim=c(-10,10), xlab="x",
      ylab="y", zlab="z")


z <- x^3+y^3
surface <- persp(x[,1],y[1,],z,theta = 80,phi = 20,expand = 1,col = terrain.colors(30),
                 xlab = "x",ylab="y")

n = 200
x1 = runif(n, -10, 10)
y1 = runif(n, -10, 10)
z1 = x1^3 + y1^3 + 10*rnorm(n)

xy.list = trans3d(x1, y1, z1, surface)
points(xy.list, pch=20, col=heat.colors(10))

install.packages("maps")
install.packages("ggmap")
install.packages("DeducerSpatial")
library(maps)
data()
map("usa")
map("county")
map("state", "GEORGIA")
map.cities(us.cities, country = "GA")
head(unemp)
head(county.fips)

colors = c("slateblue", "slateblue1", "slateblue2", "slateblue3", "slateblue4")
a <- c(2,3,5,1,3)
b <- 0:4
match(a,b)
county.fips$unemp1 <- unemp$unemp[match(county.fips$fips,unemp$fips)]
unemp$colorBuckets <- as.numeric(cut(unemp$unemp, c(0, 2.5, 5, 7.5, 10, 100)))


install.packages("mapproj")
map("state", col = "white", fill = FALSE, add = TRUE, lty = 1, lwd = 0.2,
    projection = "polyconic")
title("unemployment rate by county, 2009")















