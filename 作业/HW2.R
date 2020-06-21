##### HW2 #####
##### Wenhui Yang #####

#####Question 1#####
set.seed(2)
x <- rchisq(20,5) 
e <- rnorm(length(x),0,2)
y <- 3 + 2*x + e 
# generate a regression function
r <- a + slope_coefficient*x
x_bar <- mean(x)
y_bar <- mean(y)
slope_coefficient <- sum((x - x_bar)*(y - y_bar)) / sum((x - x_bar)^2)

[1] 2.062238

######Qestion 2#####
a <- runif(100)
a <- round(a)
b <- runif(100, 1 + -2:0)
b <- round(b)
same <- which(a==b)

[1]   3   4   5   6   8  15  18  22  23  25  27  29  38  40  48  49  52  53  55  56  57  58  62
[24]  72  75  76  77  82  84  85  88  91  92  93  94  95 100

#####Qestion 3#####
# Create two vectors: poker_vector and roulette_vector
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <-c(-24, -50, 100, 350, 10)

# Assign days as names of poker_vectors and roulette_vector
days_vector <- c("Mon","Tues","Wed","Thu","Fri")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# From poker_vector, select the poker result from Tuesday and Thursday and assign to
# poker_midweek
poker_midweek <- poker_vector[2:4]

Tues  Wed  Thu 
-50   20 -120 

# Calculate the average earning in poker_midweek
ave_poker_midweek <- mean(poker_midweek)
[1] -50

# What is the biggest amount you made in poker? When did you make it?
print(max(poker_vector))
[1] 240

print(which.max(poker_vector))
Fri 
5 

print(which(poker_vector > roulette_vector))
Mon Fri 
1   5 

# Money you made in poker and in roulette
total <- poker_vector + roulette_vector

Mon Tues  Wed  Thu  Fri 
116 -100  120  230  250 

# Calculating total weekly winnings with poker
total_poker <- sum(poker_vector)
total_roulette <- sum(roulette_vector)

[1] 230
[1] 386

# Comparing total winnings
total_poker > total_roulette
[1] FALSE