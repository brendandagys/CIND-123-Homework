#QUESTION 1

#1
a = rnorm(100)
print(a)
cat("\n")

#2
print(paste("The mean of a is:", mean(a)))
print(paste("The SD of a is:", sd(a)))
cat("\n")

#3
b = rnorm(100, 2, 5)
print(b)
cat("\n")

#4
print(paste("The mean of b is:", mean(b)))
print(paste("The SD of b is:", sd(b)))
cat("\n")

#5
print(paste("Height of normal distribution for 1.96 =", (dnorm(1.96))))

#QUESTION 2

cat("\nQUESTION 2\n\n")
print(paste("Percentage of students scoring 86+ on exam:", pnorm(86, 62, 14.2, lower.tail = 0)))

#QUESTION 3

cat("\nQUESTION 3\n\n")

#1
print(paste("Probability that Joseph arrives in 28.5 minutes:", dnorm(28.5, 27, 7)))
cat("\n")

#2
par(mfrow = c(2, 2))
curve(dnorm(x, 27, 7), 15, 45)
plot(10:50, dnorm(10:50, 27, 7), type = 'h')

#3
set.seed(25)
hist(rnorm(200, 27, 7), breaks = 15)

#4
print(paste("Muhammed's arival time corresponding to the 80th percentile:", qnorm(0.80, 30, 3), "minutes"))
cat("\n")

#5
print(paste("Probability of arriving in 20 or less minutes:", pnorm(20, 27, 7)))
print(paste("Probability of arriving in 15 or less minutes:", pnorm(15, 27, 7)))
print(paste("Probability of arriving in 10 or less minutes:", pnorm(10, 27, 7)))
print(paste("Probability of arriving in 5 or less minutes:", pnorm(5, 27, 7)))
print(paste("Probability of arriving in 1 or less minutes:", pnorm(1, 27, 7)))
