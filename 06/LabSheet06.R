getwd()
setwd("D:\\SLIIT\\Year-02\\Semester 02\\P&S\\programs\\05")
data<-read.table("Forest.txt" ,header=TRUE, sep=",")
data

fix(data)
attach(data)

#02 give the summary of the data set
str(data)

#03(Observations in the data set)
#517 observations 

#04 
min(wind)
max(wind)

#05(Five number summary)
summary(temp)

#06(Outliers)
boxplot(wind, horizontal = TRUE, outline = TRUE, pch = 16)
#Negatice skewed distribution

outliers<- boxplot.stats(wind)$out
length(outliers)

#08(Median)
median(temp)

#09(Mean and standard deviation)
mean(wind)
sd(wind)

#10(IQR)
IQR(wind)

#11(Observations)
freq<-table(day,month)
freq
#answer = 21

#12(Average temperature)
mean(temp[month=="sep"])

#13(Most observations)
count<-table(day[month=="jul"])
names(count[count==max(count)])


