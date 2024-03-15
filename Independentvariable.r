data<-data.frame(
  H<-c(70,63,72,60,66,70,74,65,62,67,65,68),
  W<-c(155,150,180,135,156,168,178,160,132,145,139,152)
)
print("H as the independent variable")
reg<-lm(W ~ H)
reg

print("H as dependent variable")
reg<-lm(H ~ W)
reg