a <- 11
x0 <- 85
c <- 37
m <- 100

results = vector("numeric", length = 100)

results[1] = x0

for(i in 2:length(results))
{
  results[i] = (a*results[i-1] + c) %% m
}

random_numbers = results/m
random_numbers

non_rep_rand = random_numbers[1:50]
windows()
qqplot(non_rep_rand, qunif((1:length(non_rep_rand))/(1+length(non_rep_rand))),xlab="Empirical",ylab="Generated")


