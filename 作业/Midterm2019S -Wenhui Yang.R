# Q1 Download "CollegeQ1.csv" and import it to R

# (1) What is the average of graduate rate ("Grad.Rate")? 
# Ignore the missing values to calculate the average.
college <- read.csv(file.choose(), stringsAsFactors = FALSE,na.strings = "")
college$Grad.Rate <- as.numeric(college$Grad.Rate)
ave_grade <- colMeans(college$Grad.Rate,na.rm=TRUE)

# (2) Create a variable "Enroll.Rate" which equals "Enrollment"/"Acceptance".
# Compare the median enrollment rate for private schools with that 
# for public schools
Enroll.Rate <- college$Enrollment / college$Acceptance
private <- median(Enroll.Rate[college$Private.School == "Yes"])
public <- median(Enroll.Rate[college$Private.School == "No"])


# (3) Select the schools whose Personal.Expenditure are within top 10%.
# What is the proportion of private schools in top 10%?
q10 <- quantile(college$Personal.Expenditure,0.9)
a <- college$Personal.Expenditure >= q10
school <- which(a)
school2 <- college$X[a]


# (4) Create a function that run Y on x given (X,Y), and returns linear regression 
# estimation result (or coefficients). 
# Create a variable, "Private", which equals TRUE if Private.School is "Yes", 
# and equals FALSE otherwise.
# Using this function, run a regression of "Enroll.Rate" on "Private"
myfun <- function(x,y) {
  reg <- lm(y~x)
  return(reg)
}
if (college$Private.School == "Yes") {
  Private <- TRUE
  return(1)
} else {
  Private <- FALSE
  return(0)
}
reg1 <- myfun(Enroll.Rate,Private)

# (5) Select a set of schools whose name starts with "A" and assign this subset to "School.A"
# Select another set of schools whose name starts with "D" and assign this subset to "School.D"
# Combine these two sets of school and assign this set of schools to "School.AD"

School.A <- college[college$X >= "A" & college$X < "B",]
School.B <- college[college$X >= "D" & college$X < "E",]
School.AD <- merge(School.A,School.B)

# Q2 Generate 100 standard normal random numbers to construct 10?10 matrix. Based on this matrix,
# create a matrix such that a component equals 1 if the normal random variable is greater than 0,
# equals to 0 otherwise.
matrix1 <- matrix(rnorm(100),10,10)
myfun2 <- function(x) {
  if (x > 0) {
    x == 1
  } else {
    x == 0
  }
}
apply(matrix1,MARGIN = 1,FUN = myfun2)







