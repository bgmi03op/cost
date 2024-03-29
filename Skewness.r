data<-data.frame(
  x=c(0,1,2,3,4),
  f1=c(10,5,2,2,1),
  f2=c(1,2,14,2,1),
  f3=c(1,2,2,5,10)
)
View(data)
getmode<-function(v)
{
  uniqv<-unique(v)
  uniqv[which.max(tabulate(match(v,uniqv)))]
}
attach(data)
mean1<-mean(rep(x,f1))
median1<-median(rep(x,f1))
mode1<-getmode(rep(x,f1))
sd1<-sd(rep(x,f1))
pearsonfirst1<((mean1-mode1)/sd1)
pearsonsecond1<-(3*(mean1-median1)/sd1)
pearsonfirst1
pearsonsecond1




attach(data)
mean1<-mean(rep(x,f1))
median1<-median(rep(x,f1))
mode1<-getmode(rep(x,f1))
sd1<-sd(rep(x,f1))
pearsonfirst1<-((mean1-mode1)/sd1)
pearsonsecond1<-(3*(mean1-median1)/sd1)
pearsonfirst1
pearsonsecond1


attach(data)
mean2<-mean(rep(x,f2))
median2<-median(rep(x,f2))
mode2<-getmode(rep(x,f2))
sd2<-sd(rep(x,f2))
pearsonfirst2<-((mean2-mode2)/sd2)
pearsonsecond2<-(3*(mean2-median2)/sd2)
pearsonfirst2
pearsonsecond2


attach(data)
mean3<-mean(rep(x,f3))
median3<-median(rep(x,f3))
mode3<-getmode(rep(x,f3))
sd3<-sd(rep(x,f3))
pearsonfirst3<-((mean3-mode3)/sd3)
pearsonsecond3<-(3*(mean3-median3)/sd3)
pearsonfirst3
pearsonsecond3