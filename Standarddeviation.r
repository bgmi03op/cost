my_data<-data.frame(
  A=c(12, 6, 7, 3, 15, 10, 18, 5 ),
  B=c(9, 3, 8, 8, 9, 8, 9, 18)
)
my_data

# Calculate standard deviation and variance for column A
sd_A <- sd(my_data$A)
Var_A <- var(my_data$A)
cat("Standard Deviation of A:", sd_A, "\n")
cat("Variance of A:", Var_A, "\n")

# Calculate standard deviation and variance for column B
sd_B <- sd(my_data$B)
Var_B <- var(my_data$B)
cat("Standard Deviation of B:", sd_B, "\n")
cat("Variance of B:", Var_B, "\n")

# View the data
View(my_data)