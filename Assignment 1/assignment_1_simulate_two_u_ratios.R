#Assignment I
n <- 100
X <- numeric(length = n)


for(i in 1:100) {
  
  u1 <- runif(1,0,sqrt(1))
  u2 <- runif(1,0,1)
  z <- u1/u2
  while( u1 < sqrt(1/(1 + (z)^2))) {
    
    u1 <- runif(1,0,sqrt(1))
    u2 <- runif(1,0,1)
    z <- u1/u2
  }
  
  X[i] <- z
  print(paste0('Iteration: ',i,' is done.'))
}
