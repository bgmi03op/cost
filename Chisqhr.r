data2<-read.csv(file.choose(),sep = ",",header =TRUE)
view(data2)
result<-chisq.test(data2)
result
if(result$p.value>0.05){
  print("support buisness owners prediction")
}else{
  print("reject buisness owners prediction")
}