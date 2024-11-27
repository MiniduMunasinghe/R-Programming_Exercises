getwd()
setwd("C:\\Users\\IT22130716\\Desktop\\Lab 2")
dat<-read.csv("DATA 2.csv",header= TRUE,sep = ",")
fix(dat)
dat2<-read.table("Data1.txt",header = TRUE,sep=",")
fix
write.csv(dat2,file="new.csv")

#if condition
x<-0
if(x>0){
  print("positive")
}else if(x<0){
  print("Negative")
}else{
  print("ZERO")
}

#while loop
x<-0
while(x<6){
  x<-x+1
  print(x)
}

#For loop
for(i in 1:6){
  print(i)
}

#Function
add<-function(a,b){
  sum<-a+b
  return(sum)
}
#call function
add(5,6)

#lab2.1
root<-function(a,b,c){
  des<-b^2-4*a*c
  root1<-(-b+sqrt(des))/(2*a)
  root2<-(-b-sqrt(des))/(2*a)
  print(c(root1,root2))
}
root(3,2,-1)

#lab2.3
x<-c(1,2,3)
logi<-log(x)
expo<-exp(x)
plot(x,logi,type="o",col="blue")
plot(x,expo,type="o",col="red")

#lab2.4
y<-c(1:20)
y
sum(y%%3==0)

#lab2.5
A<-c(1,2,3)
B<-c(4:9)
A
B
out<-intersect(A,B)
out
if(length(out)==0){
  print("Disjoint")
}else{
  print("not disjoint")
}

#lab2.6
max<-0
ind<-0
vec<-c(5,4,7,0,3,1)
maxindex<-function(vec,m,k){
  for(i in 1:length(vec)){
    if(vec[i]>m){
      m<-vec[i]
      k<-i
    }
  }
  print(c(k,m))
}
maxindex(vec,max,ind)
vec<-c(5,4,2,7,0,3,1)
which.max(vec)
vec[which.max(vec)]

#lab2.7
vec<-c(5,4,2,7,0,3,1)
which.max(vec)
vec[which.max(vec)]

#lab2.8
amount<-function(p,r,n){
  for(i in 1:n){
    p<-p*(1+r/100)^i
    print(p)
  }
}
amount(5000,11.5,15)
