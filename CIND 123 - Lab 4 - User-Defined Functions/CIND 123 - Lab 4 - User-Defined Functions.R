# (1) meanfunction
average <- function(x) {
  return(sum(x)/length(x))
}

# (2) zscorefunction
zscore <- function(x,y) {
  return((x - average(y))/sd(y))
}

# (3) maximum price

maxprice = function(x) {
  a = sum(house$price <= x)
  b = paste(100 * round(a/length(house$price), digits = 3), "%", sep = "")
  return(c = c(a, b))
}

# (4) histogram skew

pricehistogram = function(x) {
  hist(x, main = "Histogram of Prices", col = "blue", xlab = "Price")
  
  if (average(x) == median(x)) {
    print("The median equals the mean.")
    break
  }
  if (average(x) > median(x)) return(1) else return(-1)
}

# (5) z-score generator

zscore2 = function(x) {
  print(summary(house$bathp[house$price <=x]))
  return(zscore(average(house$bathp[house$price <= x]), house$bathp))
}

# (6) head of upper and lower price

priceinterval = function(x, y) {
  return(head(subset(house, (price >= x & price <= y))))
}

# (7) subset of cheapest houses with x bath pieces

cheapbaths = function(x) {
  bath = subset(house, bathp == x)
  bath = bath[bath$price == min(bath$price), ]
  return(bath)
}



