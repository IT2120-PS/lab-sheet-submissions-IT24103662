#setting the directory

setwd("C:\\Users\\REDTECH\\OneDrive - Sri Lanka Institute of Information Technology\\Desktop\\IT24103662_Lab_08")

#importing the data set
data <- read.table("Exercise - LaptopsWeights.txt",header=TRUE)

fix(data)
attach(data)

#Question 01 

popmean <- mean(Weight.kg.)
popmean

popsd<- sd(Weight.kg.)
popsd


#Question02

samples<- c()
n<-c()
for (j in 1:25) {
  s<- sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('s',j))
  
}
samples
n

colnames(samples)=n
samples


s.mean <- apply(samples,2,mean)
s.mean

s.sd <- apply(samples,2,sd)
s.sd

#Question03


m.samplemean<-mean(s.mean)
m.samplemean
sd.samplemean<-sd(s.mean)
sd.samplemean

theoretical_sd_sm <- popsd/sqrt(6)
theoretical_sd_sm
sd.samplemean


