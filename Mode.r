data <- read.csv(file.choose(), header = TRUE, sep = ",")
data3 <- data
View(data3)
# Shift Previous Value f0 and Next Value f2 in same Row
data3$f0 <- data.table::shift(data3$Frequency,1)
data3$f2 <- data.table::shift(data3$Frequency,-1)
# Adjust low and High Value for fill the gap and make it continous
data3$Low <- data3$Low - 0.5
data3$High <- data3$High + 0.5
# Find the Median group where frequency is Max
mode_group <- data3[which.max(data3$Frequency),]
# Find all Value for Formula
l1 <- mode_group$Low
l2 <- mode_group$High
f0 <- mode_group$f0
f1 <- mode_group$Frequency
f2 <- mode_group$f2
# Apply Mode Formula
mode_value <- l1 + ((f1-f0)/(f1-f0+f1-f2)*(l2-l1))
mode_value