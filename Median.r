data <- read.csv(file.choose(), header = TRUE, sep = ",")
data2 <- data
data2$cumm <- cumsum(data2$Frequency)
View(data2)

data2$pcf <- data.table::shift(data2$cumm,1)
data2$Low <- data2$Low - 0.5
data2$High <- data2$High + 0.5

N <- max(data2$cumm)
# Find the Median group for N/2 Value
median_data <- data2[(data2$pcf <= N/2 & data2$cumm >= N/2),]
median_data

# Find all Value for Formula
l1 <- median_data$Low
l2 <- median_data$High
pcf <- median_data$pcf
f <- median_data$Frequency

# Apply Median Formula
median <- l1 + ((N/2 - pcf)/f*(l2-l1))
median