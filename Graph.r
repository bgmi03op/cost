data<-data.frame(
  year=c(2000,2001,2002,2003,2004,2005),
  total=c(51246,53659,53115,59364,61383,62958)
)
#Graph the data and show the least-squares regression line.
attach(data)
plot(year,total
     ,type="p",
     pch=16,
     col="blue")
#Find and plot the trend line for the data.
reg_model<-lm(total~year,data=data)
print(reg_model)
abline(reg_model,col="red")

print("Estimate the value of total agricultural exports in the year 2006.")
newdata<-data.frame(
  year=c(2006)
)
predict(reg_model,newdata)