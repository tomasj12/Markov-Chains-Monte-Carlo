#Assignment I
n <- 1000
Z <- numeric(length = n)


for(i in 1:1000) {
  
  X <- runif(1,0,sqrt(1))
  Y <- runif(1,-200,200)
  z <- Y/X
  while( X^2 > 1/(1 + z^2)) {
    
    X <- runif(1,0,sqrt(1))
    Y <- runif(1,-200,200)
    z <- Y/X
  }
  
  Z[i] <- z
  print(paste0('Iteration: ',i,' is done.'))
}

hist(Z)