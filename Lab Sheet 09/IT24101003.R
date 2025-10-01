setwd("C:/Users/Nuwantha/Desktop/IT24101003")

set.seed(123)
sample_size <-25
mu <- 45
sigma <-2
baking_time <- rnorm(sample_size,mean = mu, sd= sigma)
print(baking_time)

t_test_result <- t.test(baking_time, mu=46, alternative="less")
print(t_test_result)
