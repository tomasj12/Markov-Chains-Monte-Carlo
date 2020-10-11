#Assignment I
n <- 1000
X <- numeric(length = n)


for(i in 1:1000) {
  
  u1 <- runif(1,0,sqrt(1))
  u2 <- runif(1,-10000,10000)
  z <- u2/u1
  while( u1^2 + u2^2 <=1) {
    
    u1 <- runif(1,0,sqrt(1))
    u2 <- runif(1,-10000,10000)
    z <- u2/u1
  }
  
  X[i] <- z
  print(paste0('Iteration: ',i,' is done.'))
}
