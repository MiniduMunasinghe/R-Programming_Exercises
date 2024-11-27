getwd()
setwd("C:\\Users\\IT22130716\\Desktop\\LabSheet05")
getwd()

data<-read.table("Data.txt",header = TRUE, sep = ",")
data
fix(data)
names(data)<-c("x1","X2")

attach(data)

hist(X2,main="Histrogram for no of Shareholder ", breaks=seq(130,270,length=8),right=FALSE)

histrogram<-hist(X2,main="Histrogram for no of Shareholder ",breaks=seq(130,270,length=8),right=FALSE)

breaks<-round(histrogram$breaks)
breaks

freq<-histrogram$counts
freq

mid<-histrogram$mids
mid

classes<-c()
for(i in 1:length(breaks)-1){
  classes[i]<-paste("{",breaks[i],",",breaks[i=1],"}")
}

cbind(classes=classes,frequency=freq)

lines(histrogram$mid,freq)

plot(mid,freq,type="l",main="freq polygon for no of shareholders",
     ylab="frequency",xlab="Shareholder",ylim=c(0,max(freq)))

cum.freq<-cumsum(freq)
cum.freq

new<-c()

for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }
  else{
    new[i]=cum.freq[i-1]
  }
}

plot(breaks,new,type="o",main="Freq pollygon",ylab="cum",xlab="holders",ylim = c(0,max(cum.freq)))
cbind(upper=breaks,cumfreq=new)

sum(freq)*0.75
abline(h=sum(freq)*0.75,v=207)
