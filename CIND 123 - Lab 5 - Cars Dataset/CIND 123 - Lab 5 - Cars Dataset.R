cars <- as.data.frame(read.table("C:/CIND123/lab5/dataset.txt", stringsAsFactors = F))

names(cars) <- c('mpg', 'cyl', 'displacement', 'hp', 'weight', 'acc', 'year', 'origin', 'name')

summary(cars)
cars$hp <- as.numeric(cars$hp)

plot(cars$weight, cars$acc)

p1 <- which(cars$acc == median(cars$acc))
p1.5 <- which.min(cars$weight[p1])
cars$name[p1][p1.5]

cars$wdiff <- cars$weight - mean(cars$weight)
p2 <- which.min(abs(cars$wdiff))
cars$name[p2]
