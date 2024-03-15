data<-read.csv(file.choose(),header = T,sep = ",")
View(data)

result<-chisq.test(data)
result


if(result$p.value>0.05){
  print("The discrepancies are not significant.")
}else{
  print("The discrepancies are significant.")
}