library(nonlinearTseries)

data <- read.csv("../data/kilo10000.csv",header=F)
names(data) <-  c("date","キロ程","高低左","高低右","通り左","通り右","水準","期間","速度")
data <- data[-1,]

kilo = as.numeric(data[,"キロ程"])


surrogateTest(time.series = kilo, significance = 0.05, K = 1, one.sided = FALSE, FUN = timeAsymmetry)



