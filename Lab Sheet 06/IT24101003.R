setwd("C:/Users/Nuwantha/Desktop/IT24101003")

#Question 1 (Binomial)

n <- 44
p <- 0.92

# P(X = 40)
p_eq_40 <- dbinom(40, size=n, prob=p)
print(p_eq_40)

#P(X <= 35)
p_le_35 <- pbinom(35, size=n, prob=p)
print(p_le_35)

#P(X >= 38)
p_ge_38 <- 1 - pbinom(37, size=n, prob=p)
print(p_ge_38)

#P(40 <= X <= 42)
p_40_42 <- pbinom(42, size=n, prob=p) - pbinom(39, size=n, prob=p)
print(p_40_42)




#Question 2 (Poisson)
lambda <- 5
# P(X = 6)
p_eq_6 <- dpois(6, lambda=lambda)
print(p_eq_6)

#P(X > 6)
p_gt_6 <- 1 - ppois(6, lambda=lambda)
print(p_gt_6)



# Exercise 1 (Binomial)
n2 <- 50
p2 <- 0.85
# P(X >= 47)
p_ge_47 <- 1 - pbinom(46, size=n2, prob=p2)
print(p_ge_47)


# Exercise 2 (Poisson)
lambda2 <- 12
# P(X = 15)
p_eq_15 <- dpois(15, lambda=lambda2)
print(p_eq_15)

