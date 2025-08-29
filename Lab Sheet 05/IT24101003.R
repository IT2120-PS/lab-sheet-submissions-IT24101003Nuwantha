# Q1
setwd("C:/Users/it24101003/Desktop/LAB 05")
DeliveryTime <-read.table("Exercise - Lab 05.txt", header = TRUE, sep = "\t")
names(DeliveryTime) <- c('x1')
fix(DeliveryTime )
head(DeliveryTime )

# Q2
breakes<- seq(20,70, length.out= 10)
histogram <- hist(DeliveryTime$x1, 
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time",
     ylab = "Frequency")
#Q3 

# the histogram shows a slightly right-skewed distribution
# with a higher frequency of delivery times in the range of 30 to 50 minutes
# There are fewer observation above 60 min

#Q4
cumulative_freq <- cumsum(histogram$counts)


plot(histogram$breaks[-1], cumulative_freq, type = "o",
     main = "Cumulative Frequency Polygon (Ogive) of Delivery Times",
     xlab = "Delivery Times",
     ylab = "Cumulative Frequency",
     pch = 16)

