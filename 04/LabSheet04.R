setwd("C:\\Users\\IT22130716\\Desktop\\LabSheet04")
getwd()
dat<-read.table("DATA 4.txt",header = TRUE,sep = "")
fix(dat)
attach(dat)

#Qs-02
#02.A
dat$X3
boxplot(dat$X3,horizontal = TRUE,outline = TRUE,outpch=8)
hist(dat$X3)
stem(dat$X3)

#02.B
mean(dat$X3)
median(dat$X3)
sd(dat$X3)

#02.C
summary(dat$X3)
quantile(dat$X3)
quantile(dat$X3)[2]#q1
quantile(dat$X3)[4]#q3

#02.D
IQR(dat$X3)

#Qs-03
mod<-function(h){
    count<-table(h)
    names(count[count ==max(count)])
}

mod(dat$X3)

#Qs-04
out<-function(g){
  q1<-quantile(g)[2]
  q3<-quantile(g)[4]
  iqr<-q3 - q1
  ub<-q3 + 1.5+iqr
  lb<-q1 - 1.5+iqr
  print(paste("Upper boud",ub))
  print(paste("lowerbound",lb))
  sort(g[g<lb|g>ub])
  print(past("outlier =",paste(sort(g[g<lb|g>ub]),collapse = ",")))
}
out(dat$X3)










