setwd("C:\\Users\\IT22130716\\Desktop\\LabSheet03")
getwd()
dat<-read.csv("DATA 3a.csv",header = TRUE,sep=",")

fix(dat)

names(dat)<-c("Age","Gender","Accommodation")
dat$Gender<-factor(dat$Gender,c(1,2),c("Male","Female"))
dat$Accommodation<-factor(dat$Accommodation,c(1,2,3),c("Home","Border","lodging"))
attach(dat)
pie(dat$Age)
barplot(dat$Age)
boxplot(dat$Age,horizontal = TRUE)
boxplot(dat$Accommodation,horizontal = TRUE)

genAge<-table(dat$Age,dat$Gender)
genAge
pie(genAge)
barplot(genAge,legend=TRUE)
GenAcc<-table(dat$Gender,dat$Accommodation)
GenAcc

barplot(GenAcc,main="Gendr with ACC",ylab="freq",xlab="Accom")
boxplot(GenAcc)
xtabs(dat$Age~dat$Gender,dat$Accommodation)
GenAcc

xtabs(dat$Age~dat$Gender+dat$Accommodation)/GenAcc
