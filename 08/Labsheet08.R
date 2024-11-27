getwd()
setwd("D:\\SLIIT\\Year-02\\Semester 02\\P&S\\Labsheeet\\08")
data<-read.table("Lab 8.txt",header=TRUE)
fix(data)
data

#Change the data structure
data<-data[[1]]
data

#01
mean(data)
var(data)
sd(data)

#02
s<-sample(data,5)
s
sample<-c()
n<-c()

for(i in 1:30){
  s<-sample(data,5)
  samples<-cbind(sample,s)
  n<-c(n,paste('S','i'))
}
colnames(samples)<-n
samples

s.vars<-apply(sample, 2,var)
s.vars

s.vars<-apply(sample, 2,var)
s.vars



