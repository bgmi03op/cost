data<- read.csv(file.choose(),sep = ",", header = T)
attach(data)

print("The least regression line fo Y on X is")
lrYX<- lm(Y~X)
lrYX

print("The least regression line fo Y on X is")
lrXY<- lm(X~Y)
lrXY