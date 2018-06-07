#Question 1a
x = rbinom(10000, 5, 0.5)
#hist(x)

y = rbinom(10, 5, 0.5)
#hist(y)

#Chance of getting 4 or 5 heads
fourheads = dbinom (4, 5, 0.5) + dbinom(5, 5, 0.5)

#Question 1b
x2 = rbinom(10000, 5, 0.5)
x2mean = mean(x2 >= 4)
x2mean2 = dbinom(4, 5, 0.5) + dbinom(5, 5, 0.5)

#Question 2
x3 = dbinom(2, 6, 1/3)
x3answer = choose(6, 2) * (1/3)^2 * (2/3)^(6 - 2)

#Question 3
x4 = numeric(9)
for (i in seq_along(x4)) {
  x4[i] = dbinom(i, 9, 3/4)
}

x4alternate = dbinom(1:9, 9, 3/4)

#Question 4
noProblems = dbinom(0, 10, 0.2)
allGood = dbinom(10, 10, 0.8)

#Question 5

x5 = pbinom(4, 12, 0.2)

#EXERCISE 2 - POISSON

x6 = 1 - ppois(16, 12)
x6tailfalse = ppois(16, 12, lower.tail = 0)
x6less17 = ppois(16, 12)

#EXERCISE 3 - HYPERGEOMETRIC DISTRIBUTION

(choose(100, 30) * choose(300, 95)) / choose(400, 125)
x7 = dhyper(30, 100, 300, 125)






