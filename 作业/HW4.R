Logical vectors
a <- c("STORRS","HARTFORD","STAMFORD","S")
a[1]
a[c(TRUE,FALSE,TRUE)]
a[which(a >= "S")]  ##storrs have torrs.. more letters [greater: ]

z <- runif(10,min = -1, max = 1)
z
plus <- z>0
plus
z_plus <- z[plus]
z_plus
sum(plus)

ind_plus <- which(z>0)
z[ind_plus]

z_minus <- z[!(z>=0)] ## ! represnets "not"
z[z<0] <- -z[z<0]

a <- rnorm(20,6,2)
a_mid <- a[a>=4 & a<=7]
which(a>=4 & a<=7)
a_end <- a[a>9 | a<3]


income <- rchisq(100,8)
?quantile
d <- quantile(income,  c(0.4,0.6))
which(income>d[1] & income<d[2])

vec <- c(3,FALSE,5,6,2,NA,pi)
class(vec)
vec[is.na(vec)] <- 0

c(TRUE,FALSE) && c(TRUE,FALSE) ## && only count the initial element
||
  
4 %in% 1:5  ##belong to 
4 %in% 6:20

-6*14 != 79-4  ##compare

state.name
state.name[(state.name >= "F" & state.name <= "V")]

a <- substr(state.name,1,1)
b <- a %in% LETTERS[6:21]
state.name[b]

# Create two vectors: poker_vector and roulette_vector
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, 350, 10)

# Assign days as names of poker_vectors and roulette_vector
days_vector <- c("Mon","Tues","Wed","Thu","Fri")

# Which days did you make money on poker and how much did you make on those days
selection_vector <- days_vector[poker_vector > 0]
poker_winning_days <- sum(poker_vector[which(poker_vector > 0)])

winning_days <- days_vector[poker_vector > 0 & roulette_vector  > 0]
total <- poker_vector + roulette_vector
total_winning_days <- sum(total[which(poker_vector > 0 & roulette_vector  > 0)])


sum(poker_vector > 0 | roulette_vector >0)

a <- rnorm(1000)
sum(a > 1.96 | a < -1.96) /1000














