##Q1
loc<-getwd()
self <- read.csv(paste(loc,"height_selfesteem.csv", sep="/"))

cor(self$Height, self$Self.Esteem)
cov(self$Height, self$Self.Esteem)

#Q3
attach(mtcars)
#a
cor.test(wt, mpg, method = "pearson") # or cor.test(wt, mpg, method = "pearson")
#i)The default method is pearson

#ii) Interpretation of the result

#t is the t-test statistic value (t = -9.559),
#df is the degrees of freedom (df= 30),
#p-value is the significance level of the t-test (p-value = 1.29410^{-10}).
#conf.int is the confidence interval of the correlation coefficient at 95% (conf.int = [-0.9338, -0.7441]);
#sample estimates is the correlation coefficient (Cor.coeff = -0.87).
#The p-value of the test is 1.29410^{-10}, 
#which is less than the significance level alpha = 0.05. 
#We can conclude that wt and mpg are significantly correlated with a correlation 
#coefficient of -0.87 and p-value of 1.29410^{-10} .

#b
cor.test(cyl, hp)
#c
cor.test(carb, gear)
#d
myvar <- c("disp", "hp", "cyl")
pairs(mtcars[myvar])

#e
install.packages("lazyeval")
install.packages("viridis")
install.packages("corrgram")
library(corrgram)
corrgram(mtcars, order=TRUE, lower.panel=panel.shade,
          upper.panel=panel.pie, text.panel=panel.txt,
         main="Car Milage Data in PC2/PC1 Order")

#Q4
#a
tourist <- read.csv(paste(loc,"tourist.csv", sep="/")) 
#Sample data is from http://www.theanalysisfactor.com
attach(tourist)
cor(CHILDREN, SPEND, method ="spearman")

#b
cor.test(CHILDREN, SPEND)
#cor = -0.2612796, weak correlation, and it is negative.
#This means tourists with a greater number of children tend to spend less!
#c
levels(as.factor(CHILDREN))

#d
cor.test(CHILDREN, SPEND, method ="spearman")

# cor = -0.3116905
#We have obtained a similar but slightly different correlation coefficient estimate 
#because the Spearman correlation is indeed calculated differently than the Pearson.

