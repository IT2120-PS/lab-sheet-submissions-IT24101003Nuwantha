# Q1
setwd("C:/Users/it24101003/Desktop/LAB 08")
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
names(data)<- c("X")
fix(data)
attach(data)
population_mean  <- mean(X)
population_mean
population_varience <- var(X)
population_sd <- sqrt(population_varience)
population_sd

#Q2
samples<-c()
n<-c()

for (i in 1:25) {
  s<- sample(X,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}
colnames(samples) = n
s.means <-apply(samples,2,mean)
s.vars<-apply(samples,2,var)

results <- data.frame(
  Sample = 1:25,
  Mean = round(s.means, 3),
  Variance = round(s.vars, 3)
)
print(results)

#Q3
sample_mean<- mean(s.means)
sample_mean
population_mean
sample_varience<-var(s.vars)
sample_varience
population_varience
